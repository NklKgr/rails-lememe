class Leaderboard < ApplicationRecord
  leaderboard = Leaderboard.create([
    { score: 200, player: "Joe Smith" },
    { score: 150, player: "Mark Johnson" },
    { score: 180, player: "Sarah Davis" },
    { score: 220, player: "Michael Brown" },
    { score: 190, player: "Emily Wilson" },
    { score: 160, player: "David Thompson" },
    { score: 240, player: "Olivia Anderson" },
    { score: 210, player: "James Martinez" },
    { score: 170, player: "Sophia Hernandez" },
    { score: 230, player: "Daniel Taylor" }
  ])

end
