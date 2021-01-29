//
//  ViewController.swift
//  CardSliderXcode
//
//  Created by Janarthan Subburaj on 29/01/21.
//

import UIKit
import CardSlider

struct TamilMovie: CardSliderItem {
    let image: UIImage
    let rating: Int?
    let title: String
    let subtitle: String?
    let description: String?
}

class ViewController: UIViewController {
    let movies = [
        TamilMovie(image: UIImage(named: "anathaa")!, rating: 0, title: "Annaatthe", subtitle: "2021", description: "Annaatthe is an upcoming Indian Tamil-language action drama film written and directed by Siva. produced by Kalanithi Maran under the banner Sun Pictures. The film stars Rajinikanth, Meena, Khushbu, Keerthy Suresh, Nayanthara, Prakash Raj and Vela Ramamoorthy"),
        TamilMovie(image: UIImage(named: "bampan")!, rating: 4, title: "Paamban", subtitle: "2021", description: "Paamban aka Pamban is a Tamil action movie, directed by A. Venkatesh. The cast of Paamban aka Pamban includes Sarathkumar."),TamilMovie(image: UIImage(named: "bhoomi")!, rating: 5, title: "Bhoomi", subtitle: "2021", description: "Bhoominathan is a NASA scientist who discovers that plant life can exist on Mars by adjusting certain anaerobic conditions needed for survival. He is lauded by his peers for his discovery. He comes on vacation to India ( Tamilnadu ) for a one month tour only to find out that his village is affected by drought and the underwater reservoir of his land has been drained away for futile purposes by certain corporates. He's also dismayed to find out that his uncle, who is an agriculturalist is burdened with farm debts due to the scarcity of water supply in his village. His uncle had tried to sort out this issue rigorously with the local MLA and the governing body but in vain, and eventually succumbs to the pressure by burning himself.Unable to withstand the grief over the death of his uncle, Bhoominathan vows to avenge the chief of the main corporate ( who is the main villain in this story) by summoning him to the court of law, but his attempts go unrecognised before the villain's money and might. However Bhoominathan decides to fight it out in an intelligent way by gaining the trust of his people and by starting his own trusted corporate by the people despite facing a lot of obstacles in his way."), TamilMovie(image: UIImage(named: "Chakra")!, rating: 0, title: "Chakra", subtitle: "2021", description: "Vishal will be seen as an army officer in 'Chakra', the storyline of the film is based on an online scam. Shraddha Srinath and Regina Cassandra play crucial roles. The film is produced by Vishal Film Factory."),TamilMovie(image: UIImage(named: "Doctor")!, rating: 0, title: "Doctor", subtitle: "2021", description: "Doctor is a Tamil action comedy movie, written and directed by Nelson Dhilipkumar. The movie stars Sivakarthikeyan and Priyanka Arul Mohan of Telugu movie Gangleader fame in the lead roles. Yogi Babu and Vinay have been roped in for supporting roles in the movie. The movie produced by Sivakarthikeyan's SK Productions and co-produced by Kalai Arasu."),TamilMovie(image: UIImage(named: "Eeswaran")!, rating: 4, title: "Eeswaran", subtitle: "2021", description: "Eeswaran is a 2021 Indian Tamil-language action drama film written and directed by Suseenthiran and was produced by Balaji Kapa, K. V. Durai and M. D. Sharafudeen under their respective banners Madhav Media and D Company. It stars Silambarsan, Bharathiraja, Nidhhi Agerwal and Nandita Swetha"),TamilMovie(image: UIImage(named: "Kaapaadathari")!, rating: 3, title: "Kapatadhaari", subtitle: "2021", description: "Kapatadhaari is a 2021 Indian Telugu-language neo noir crime thriller film directed by Pradeep Krishnamoorthy, and produced by G. Dhananjayan. A remake of 2019 Kannada film Kavaludaari, it stars Sumanth and Nandhita in the lead roles, with Nassar and Jayaprakash in pivotal roles."),TamilMovie(image: UIImage(named: "Master")!, rating: 4, title: "Master", subtitle: "2021", description: "An alcoholic professor is sent to a juvenile school, where he clashes with a gangster who uses the school's children for criminal activities."),TamilMovie(image: UIImage(named: "Vaadivasal")!, rating: 0, title: "Vaadivasal", subtitle: "2021", description: "Vaadivasal aka Vadivasal is a Tamil drama movie, directed by Vetrimaran. The cast of Vaadivasal aka Vadivasal includes Suriya Sivakumar.")
    ]
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let cardSlider = CardSliderViewController.with(dataSource: self)
        cardSlider.title = "Tamil Movies"
        cardSlider.modalPresentationStyle = .overFullScreen
        present(cardSlider, animated: true, completion: nil)
    }
}

extension ViewController: CardSliderDataSource {
    func item(for index: Int) -> CardSliderItem {
        return movies[index]
    }
    
    func numberOfItems() -> Int {
        return movies.count
    }
}

