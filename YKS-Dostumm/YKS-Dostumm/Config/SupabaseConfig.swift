import Foundation

enum SupabaseConfig {
    // MARK: - Supabase Configuration
    static let supabaseURL = ProcessInfo.processInfo.environment["SUPABASE_URL"] ?? "https://bqvjtmzqmgxoerchskex.supabase.co"
    static let supabaseKey = ProcessInfo.processInfo.environment["SUPABASE_API_KEY"] ?? "***REMOVED-SUPABASE-KEY***"
}
