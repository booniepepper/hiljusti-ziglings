//
// Quiz time again! Let's see if you can solve the famous "Fizz Buzz"!
//
//     "Players take turns to count incrementally, replacing
//      any number divisible by three with the word "fizz",
//      and any number divisible by five with the word "buzz".
//          - From https://en.wikipedia.org/wiki/Fizz_buzz
//
// Let's go from 1 to 16.  This has been started for you, but there's
// some problems. :-(
//
const std = @import("std");

pub fn main() void {
    var i: u8 = 1;
    var stop_at: u8 = 16;

    // What kind of loop is this? A 'for' or a 'while'?
    while (i <= stop_at) : (i += 1) {
        const div3 = i % 3 == 0;
        const div5 = i % 5 == 0;
        if (div3) std.debug.print("Fizz", .{});
        if (div5) std.debug.print("Buzz", .{});
        if (!div3 and !div5) std.debug.print("{}", .{i});

        std.debug.print(", ", .{});
    }
    std.debug.print("\n", .{});
}
