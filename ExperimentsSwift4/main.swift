//
//  main.swift
//  ExperimentsSwift4
//
//  Created by Ajay Thakur on 10/28/17.
//  Copyright © 2017 Ajay Thakur. All rights reserved.
//

import Foundation

print("Hello, World!")

//: Build N_ary_tree.jpgfor String
let a = ForestNode(value: "A")
let d = ForestNode(value: "D"); a.add(child: d); let b = ForestNode(value: "B"); a.add(child: b)
let c = ForestNode(value: "C"); a.add(child: c)
let f = ForestNode(value: "F"); b.add(child: f); let e = ForestNode(value: "E"); b.add(child: e)
let g = ForestNode(value: "G"); b.add(child: g)
let h = ForestNode(value: "H"); c.add(child: h); let i = ForestNode(value: "I"); c.add(child: i)
let m = ForestNode(value: "M"); d.add(child: m); let l = ForestNode(value: "L"); d.add(child: l)
let k = ForestNode(value: "K"); d.add(child: k); let j = ForestNode(value: "J"); d.add(child: j)
let o = ForestNode(value: "O"); h.add(child: o); let n = ForestNode(value: "N"); h.add(child: n)
let p = ForestNode(value: "P"); h.add(child: p)
let q = ForestNode(value: "Q"); i.add(child: q); let r = ForestNode(value: "R"); i.add(child: r)
let s = ForestNode(value: "S"); i.add(child: s); let t = ForestNode(value: "T"); i.add(child: t)
let x = ForestNode(value: "X"); e.add(child: x); let w = ForestNode(value: "W"); e.add(child: w)
let v = ForestNode(value: "V"); e.add(child: v); let u = ForestNode(value: "U"); e.add(child: u)
let z = ForestNode(value: "Z"); f.add(child: z); let y = ForestNode(value: "Y"); f.add(child: y)

let n0  = ForestNode(value: "0");  let n1 = ForestNode(value: "1");   let n2 = ForestNode(value: "2")
let n3  = ForestNode(value: "3");  let n4 = ForestNode(value: "4");   let n5 = ForestNode(value: "5")
let n6  = ForestNode(value: "6");  let n7 = ForestNode(value: "7");   let n8 = ForestNode(value: "8")
let n9  = ForestNode(value: "9");  let n10 = ForestNode(value: "10"); let n11 = ForestNode(value: "11");
let n12 = ForestNode(value: "12"); let n13 = ForestNode(value: "13"); let n14 = ForestNode(value: "14");
let n15 = ForestNode(value: "15"); let n16 = ForestNode(value: "16"); let n17 = ForestNode(value: "17");
let n18 = ForestNode(value: "18"); let n19 = ForestNode(value: "19"); let n20 = ForestNode(value: "20");
let n21 = ForestNode(value: "21"); let n22 = ForestNode(value: "22");

g.add(child: n1); g.add(child: n5); g.add(child: n3); g.add(child: n7)
j.add(child: n4); j.add(child: n6); j.add(child: n8); j.add(child: n0); j.add(child: n2)
k.add(child: n9); k.add(child: n11); k.add(child: n10); k.add(child: n13); k.add(child: n14); k.add(child:n12);
l.add(child: n16); l.add(child: n15); l.add(child: n17)
m.add(child: n21); m.add(child: n19); m.add(child: n20); m.add(child: n18); n18.add(child: n22)

print(a) // Print whole tree
if let findNodeK = a.search(value: "K") {
    print("Node K: \(findNodeK)") // Search node K and print it
}

a.sortAlternateNode(ascending: true)
print("Alternate Sorted:\(a)") // Print whole tree

a.sortNode()
print("Sorted:\(a)") // Print whole tree
print("Forest height:\(a.height())")

// Forest node of Ints
let i0  = ForestNode(value: 0);  let i1 = ForestNode(value: 1);   let i2 = ForestNode(value: 2)
let i3  = ForestNode(value: 3);  let i4 = ForestNode(value: 4);   let i5 = ForestNode(value: 5)
let i6  = ForestNode(value: 6);  let i7 = ForestNode(value: 7);   let i8 = ForestNode(value: 8)
let i9  = ForestNode(value: 9);  let i10 = ForestNode(value: 10); let i11 = ForestNode(value: 11);
let i12 = ForestNode(value: 12); let i13 = ForestNode(value: 13); let i14 = ForestNode(value: 14);
let i15 = ForestNode(value: 15); let i16 = ForestNode(value: 16); let i17 = ForestNode(value: 17);
let i18 = ForestNode(value: 18); let i19 = ForestNode(value: 19); let i20 = ForestNode(value: 20);
let i21 = ForestNode(value: 21); let i22 = ForestNode(value: 22); let i23 = ForestNode(value: 23);
let i24 = ForestNode(value: 24); let i25 = ForestNode(value: 25); let i26 = ForestNode(value: 26);
let i27 = ForestNode(value: 27); let i28 = ForestNode(value: 28); let i29 = ForestNode(value: 29);
let i30 = ForestNode(value: 30);
let i31 = ForestNode(value: 31); let i32 = ForestNode(value: 33); let i33 = ForestNode(value: 33);
let i34 = ForestNode(value: 34); let i35 = ForestNode(value: 35); let i36 = ForestNode(value: 36);
let i37 = ForestNode(value: 37); let i38 = ForestNode(value: 38); let i39 = ForestNode(value: 39);
let i40 = ForestNode(value: 40);
let i41 = ForestNode(value: 41); let i42 = ForestNode(value: 42); let i43 = ForestNode(value: 43);
let i44 = ForestNode(value: 44); let i45 = ForestNode(value: 45); let i46 = ForestNode(value: 46);
let i47 = ForestNode(value: 47); let i48 = ForestNode(value: 48); let i49 = ForestNode(value: 49);
i0.add(child: i1); i0.add(child: i2); i0.add(child: i3); i0.add(child: i4);
i2.add(child: i5); i2.add(child: i6); i2.add(child: i7);
i3.add(child: i8); i3.add(child: i9); i3.add(child: i10); i3.add(child: i11);
i4.add(child: i12); i4.add(child: i13); i4.add(child: i14); i4.add(child: i15);
i5.add(child: i16); i5.add(child: i17);
i6.add(child: i18); i6.add(child: i19); i6.add(child: i20);
i7.add(child: i21); i7.add(child: i22); i7.add(child: i23); i7.add(child: i24);
i8.add(child: i25); i8.add(child: i26); i8.add(child: i27);
i9.add(child: i28); i9.add(child: i29); i9.add(child: i30); i9.add(child: i31);
i10.add(child: i32); i10.add(child: i33); i10.add(child: i34); i10.add(child: i35);
i11.add(child: i36); i11.add(child: i37); i11.add(child: i38); i11.add(child: i39);

i12.add(child: i40); i12.add(child: i41); i12.add(child: i42);
i13.add(child: i43); i13.add(child: i44); i13.add(child: i45);
i14.add(child: i46); i14.add(child: i47); i14.add(child: i48);
i15.add(child: i49)

i0.sortNode()
print("Sorted:\(i0)") // Print whole tree


// BST: BSTInt.jpg
let root = BSTNode(value: 10); let bi0 = BSTNode(value: 0)
let bi1 = BSTNode(value: 1); let bi2 = BSTNode(value: 2)
let bi3 = BSTNode(value: 3); let bi4 = BSTNode(value: 4)
let bi5 = BSTNode(value: 5); let bi6 = BSTNode(value: 6)
let bi7 = BSTNode(value: 7); let bi8 = BSTNode(value: 8)
let bi9 = BSTNode(value: 9); let bi10 = BSTNode(value: 10)
let bi11 = BSTNode(value: 11); let bi12 = BSTNode(value: 12)
let bi13 = BSTNode(value: 13); let bi14 = BSTNode(value: 14)
let bi15 = BSTNode(value: 15); let bi16 = BSTNode(value: 16)
let bi17 = BSTNode(value: 17); let bi18 = BSTNode(value: 18)
let bi19 = BSTNode(value: 19); let bi20 = BSTNode(value: 20)
let bi21 = BSTNode(value: 21); let bi22 = BSTNode(value: 22)

root.insert(node: bi4); root.insert(node: bi2); root.insert(node: bi6)
root.insert(node: bi1); root.insert(node: bi3); root.insert(node: bi5);
root.insert(node: bi8); root.insert(node: bi7);
root.insert(node: bi16); root.insert(node: bi14); root.insert(node: bi18)
root.insert(node: bi12); root.insert(node: bi11); root.insert(node: bi13)
root.insert(node: bi17); root.insert(node: bi19); root.insert(node: bi20);
root.insert(node: bi21); root.insert(node: bi22)

print("BST:\(root)")
print("BST height:\(root.height())")

// Test Squares
let sq1 = Square(sideLength: 5.2, name: "Square 1")
print("Square 1: Area: \(sq1.area()), \(sq1.simpleDescription()). Perimeter: \(sq1.perimeter)")

// Enums
var triangleShapeType = ShapeType.triangle
print("Shape type = \(triangleShapeType.simpleDescrption()), raw value=\(triangleShapeType.rawValue)")
