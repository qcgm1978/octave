s = struct ();s = setfield (s, "foo bar", 42);assert(s.('foo bar'),42)s = struct ("baz", 42);setfield (s, {1}, "foo", {1}, "bar", 54)#s.('1')