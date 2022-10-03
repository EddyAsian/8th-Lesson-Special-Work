//////Воин, Колдун, Медик, Защитник
//////У каждого по 1000 ХП изначально (у защитника 1500)
//////Каждый раунд наносят удар по 200, 300, 0, 100
//////Медик лечит один раз в 2 раунда всю команду на 200 ХП кроме себя самого
//////Медик наносить удар не может

//////Босс
//////5000 ХП изначально
//////Наносит по 200 ХП урона каждому игроку в течение игры пока неумрет
//////Игра заканчивается когда умирает БОСС и жив хотябы один игрок, либо когда все игроки мертвы, а босс жив
//////В конце выводится print - сколько раундов прошло, сколько урона нанес каждый игрок и кто всё-таки стал победителем

var heroesNames: [String] = ["Warrior", "Wizard", "Deffender", "Medic"]
var heroesHealth: [Int] = [1000, 1000, 1000, 1000]
var heroesDamage: [Int] = [200, 300, 100, 0]
var medicHelp: Int = 200
var bossHealth: Int = 5000
var bossDamage: Int = 200
var helpMedic: (Int) = 1
func bossHit() {
    
    
    for i in 0..<heroesHealth.count {
        heroesHealth[i] = heroesHealth[i] - bossDamage
        
        }
        
    }
    

func heroesHit() {
    for i in 0..<heroesDamage.count {
        bossHealth = bossHealth - heroesDamage[i]
    }
}



func round() {
    print("--------------------------------")
    bossHit()
    print("Aтакует Босс!")
    print("Здоровье игроков после атаки: \(heroesHealth)")
    heroesHit()
    for i in 0..<heroesNames.count{
        print("Атакует \(heroesNames[i])!")
    }
    print("Остаток здоровья Босса: \(bossHealth)")
    print("--------------------------------")
}

var rounds: Int = 1

while true {
    if rounds % 2 == 0 && heroesHealth[3] > 0{
        print("В этом раунде Medic лечит трех игроков:")
        heroesHealth[0] = heroesHealth[0] + 200
        heroesHealth[1] = heroesHealth[1] + 200
        heroesHealth[2] = heroesHealth[2] + 200
    }
    if heroesHealth[0] <= 0 && heroesHealth[1] <= 0 && heroesHealth[2] <= 0 {
        print("Game Over! Босс win!")
        break
    } else if bossHealth <= 0 {
        print("Game Over! Игроки win!")
        break
    }
    
    print("\(rounds) раунд:")
    round()
    rounds = rounds + 1
}

