//
// Wire
// Copyright (C) 2017 Wire Swiss GmbH
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program. If not, see http://www.gnu.org/licenses/.
//


public func &&(lhs: NSPredicate, rhs: NSPredicate) -> NSPredicate {
    return NSCompoundPredicate(andPredicateWithSubpredicates: [lhs, rhs])
}

public func &&(lhs: NSPredicate, rhs: NSPredicate?) -> NSPredicate {
    guard let rhs = rhs else { return lhs }
    return NSCompoundPredicate(andPredicateWithSubpredicates: [lhs, rhs])
}

public func ||(lhs: NSPredicate, rhs: NSPredicate) -> NSPredicate {
    return NSCompoundPredicate(orPredicateWithSubpredicates: [lhs, rhs])
}

public func ||(lhs: NSPredicate, rhs: NSPredicate?) -> NSPredicate {
    guard let rhs = rhs else { return lhs }
    return NSCompoundPredicate(orPredicateWithSubpredicates: [lhs, rhs])
}
