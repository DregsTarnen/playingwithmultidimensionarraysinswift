//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

var grids = [[[[Int]]]]()
var rowone = [[[Int]]]()
var rowtwo = [[[Int]]]()
var rowthree = [[[Int]]]()
//block one
var block1 = [[Int]]()
var block1row1 = [Int]()
var block1row2 = [Int]()
var block1row3 = [Int]()
//block two
var block2 = [[Int]]()
var block2row1 = [Int]()
var block2row2 = [Int]()
var block2row3 = [Int]()
//block three
var block3 = [[Int]]()
var block3row1 = [Int]()
var block3row2 = [Int]()
var block3row3 = [Int]()
//block four
var block4 = [[Int]]()
var block4row4 = [Int]()
var block4row5 = [Int]()
var block4row6 = [Int]()
//block five
var block5 = [[Int]]()
var block5row4 = [Int]()
var block5row5 = [Int]()
var block5row6 = [Int]()
//block six
var block6 = [[Int]]()
var block6row4 = [Int]()
var block6row5 = [Int]()
var block6row6 = [Int]()
//block seven
var block7 = [[Int]]()
var block7row7 = [Int]()
var block7row8 = [Int]()
var block7row9 = [Int]()
//block eight
var block8 = [[Int]]()
var block8row7 = [Int]()
var block8row8 = [Int]()
var block8row9 = [Int]()
//block nine
var block9 = [[Int]]()
var block9row7 = [Int]()
var block9row8 = [Int]()
var block9row9 = [Int]()
var seed = [1,2,3,4,5,6,7,8,9]
var seeda = [Int]()
var seedb = [Int]()
var seedc = [Int]()

func seedGrid() {
    let newseed = seed.shuffled()
    seeda = [newseed[0], newseed[1], newseed[2]]
    seedb = [newseed[3], newseed[4], newseed[5]]
    seedc = [newseed[6], newseed[7], newseed[8]]
    print("\(seeda), \(seedb), \(seedc)")
}

func makeBlockOne() {
    seedGrid()
    block1row1 = seeda
    block1row2 = seedb
    block1row3 = seedc
    block1.append(block1row1)
    block1.append(block1row2)
    block1.append(block1row3)
    print("\n \(block1[0]) \n \(block1[1]) \n \(block1[2])")
}

func makeBlockTwo() {
    block2row1 = block1row3
    block2row2 = block1row1
    block2row3 = block1row2
    block2.append(block2row1)
    block2.append(block2row2)
    block2.append(block2row3)
    print("\n \(block1[0])\(block2[0]) \n \(block1[1])\(block2[1]) \n \(block1[2])\(block2[2])")
}

func makeBlockThree() {
    block3row1 = block2row3
    block3row2 = block2row1
    block3row3 = block2row2
    block3.append(block3row1)
    block3.append(block3row2)
    block3.append(block3row3)
    print("\n \(block1[0])\(block2[0])\(block3[0]) \n \(block1[1])\(block2[1])\(block3[1]) \n \(block1[2])\(block2[2])\(block3[2])")
}

func makeRowOne() {
    rowone.append(block1)
    rowone.append(block2)
    rowone.append(block3)
    rowone.shuffle()
    print("\(rowone)")
    print("\n \(rowone[0][0])\(rowone[1][0])\(rowone[2][0]) \n \(rowone[0][1])\(rowone[1][1])\(rowone[2][1]) \n \(rowone[0][2])\(rowone[1][2])\(rowone[2][2])")
}

func makeBlockFour() {
    block4row4 = [block1row1[1], block1row1[2], block1row1[0]]
    block4row5 = [block1row2[1], block1row2[2], block1row2[0]]
    block4row6 = [block1row3[1], block1row3[2], block1row3[0]]
    block4.append(block4row4)
    block4.append(block4row5)
    block4.append(block4row6)
    block4.shuffle()
    print("\n \(block4[0]) \n \(block4[1]) \n \(block4[2])")
}

func makeBlockFive() {
    block5row4 = block4row6
    block5row5 = block4row4
    block5row6 = block4row5
    block5.append(block5row4)
    block5.append(block5row5)
    block5.append(block5row6)
    print("\n \(block4[0])\(block5[0]) \n \(block4[1])\(block5[1]) \n \(block4[2])\(block5[2])")
}

class MyViewController : UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white
        makeBlockOne()
        makeBlockTwo()
        makeBlockThree()
        makeRowOne()
        makeBlockFour()
        makeBlockFive()
        let label = UILabel()
        label.frame = CGRect(x: 150, y: 200, width: 200, height: 20)
        label.text = "Hello World!"
        label.textColor = .black
        view.addSubview(label)
        self.view = view
    }
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
