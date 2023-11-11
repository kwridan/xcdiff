//
// Copyright 2019 Bloomberg Finance L.P.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//

import Foundation

protocol DiffComparable: Hashable {
    var diffKey: String { get }
}

extension Comparator {
    func result(context: [String] = [],
                description: String? = nil,
                differentValues: [CompareResult.DifferentValues] = []) -> CompareResult {
        return CompareResult(tag: tag,
                             context: context,
                             description: description,
                             onlyInFirst: [],
                             onlyInSecond: [],
                             differentValues: differentValues)
    }

    func result(context: [String] = [],
                description: String? = nil,
                onlyInFirst: [String] = [],
                onlyInSecond: [String] = [],
                differentValues: [CompareResult.DifferentValues] = []) -> CompareResult {
        return CompareResult(tag: tag,
                             context: context,
                             description: description,
                             onlyInFirst: onlyInFirst,
                             onlyInSecond: onlyInSecond,
                             differentValues: differentValues)
    }

    func result(context: [String] = [],
                description: String? = nil,
                first: Set<String> = [],
                second: Set<String> = [],
                differentValues: [CompareResult.DifferentValues] = []) -> CompareResult {
        return result(context: context,
                      description: description,
                      onlyInFirst: first.subtractingAndSorted(second),
                      onlyInSecond: second.subtractingAndSorted(first),
                      differentValues: differentValues)
    }

    func result<T: DiffComparable>(
        context: [String] = [],
        description: String? = nil,
        first: [T] = [],
        second: [T] = [],
        diffCommonValues: (([(first: T, second: T)]) -> [CompareResult.DifferentValues])? = nil
    ) -> CompareResult {
        let firstKeys = Set(first.map(\.diffKey))
        let secondKeys = Set(second.map(\.diffKey))

        let firstMap = Dictionary(
            first.map { ($0.diffKey, $0) },
            uniquingKeysWith: { $1 }
        )

        let secondMap = Dictionary(
            second.map { ($0.diffKey, $0) },
            uniquingKeysWith: { $1 }
        )

        let common = firstKeys
            .intersection(secondKeys)
            .sorted()
            .map { key in
                let commonFirst = firstMap[key]!
                let commonSecond = secondMap[key]!
                return (first: commonFirst, second: commonSecond)
            }
        
        let differentValues = diffCommonValues?(common) ?? []

        return result(
            context: context,
            description: description,
            onlyInFirst: firstKeys.subtractingAndSorted(secondKeys),
            onlyInSecond: secondKeys.subtractingAndSorted(firstKeys),
            differentValues: differentValues
        )
    }
}

extension Comparator {
    func results(context: [String] = [],
                 description: String? = nil,
                 onlyInFirst: [String] = [],
                 onlyInSecond: [String] = [],
                 differentValues: [CompareResult.DifferentValues] = []) -> [CompareResult] {
        return [result(context: context,
                       description: description,
                       onlyInFirst: onlyInFirst,
                       onlyInSecond: onlyInSecond,
                       differentValues: differentValues)]
    }

    func results(context: [String] = [],
                 description: String? = nil,
                 first: Set<String> = [],
                 second: Set<String> = [],
                 differentValues: [CompareResult.DifferentValues] = []) -> [CompareResult] {
        return [result(context: context,
                       description: description,
                       first: first,
                       second: second,
                       differentValues: differentValues)]
    }
}
