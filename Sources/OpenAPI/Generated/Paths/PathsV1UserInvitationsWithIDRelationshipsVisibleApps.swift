// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.UserInvitations.WithID.Relationships {
	public var visibleApps: VisibleApps {
		VisibleApps(path: path + "/visibleApps")
	}

	public struct VisibleApps {
		/// Path: `/v1/userInvitations/{id}/relationships/visibleApps`
		public let path: String
	}
}