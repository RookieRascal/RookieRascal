const std = @import("std");

pub fn write_file(path: []const u8, data: []const u8) !void {
    var file = try std.fs.cwd().openFile(path, .{ .write = true });
    try file.writeAll(data);
    try file.close();
}

pub fn main() void {
    const data = "Processed data from Rust";
    _ = write_file("output.txt", data);
}
