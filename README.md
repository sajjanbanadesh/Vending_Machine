# 🛒 FSM Based Vending Machine using Verilog

## 📌 Project Description
This project implements a vending machine controller using a Finite State Machine (FSM) in Verilog HDL. The system accepts coin inputs and dispenses an item when the total amount reaches ₹15.

---

## ⚙️ Features
- Accepts ₹5 and ₹10 coins
- Dispenses item when total reaches ₹15
- Automatically resets after dispensing
- Designed using Moore FSM model

---

## 🧠 Concepts Used
- Finite State Machine (FSM)
- Moore Machine
- Sequential Logic Design
- Clock and Reset Mechanism
- State Transition Logic

---

## 💰 Coin Representation
| Coin Value | Binary Input |
|-----------|-------------|
| No Coin   | 00          |
| ₹5        | 01          |
| ₹10       | 10          |

---

## 📊 FSM States
| State | Description |
|------|------------|
| S0   | ₹0 (Initial State) |
| S5   | ₹5 inserted |
| S10  | ₹10 inserted |
| S15  | ₹15 → Dispense |

---

## 🔄 State Transition
- S0 → S5 (₹5)
- S0 → S10 (₹10)
- S5 → S10 (₹5)
- S5 → S15 (₹10)
- S10 → S15 (₹5 or ₹10)
- S15 → S0 (Reset after dispense)

---

## 📈 Simulation Results
The simulation was performed using Vivado.

### ✔ Observations:
- The system correctly tracks coin inputs
- The `dispense` signal becomes HIGH when total = ₹15
- The system resets automatically after dispensing

---

## 📸 Output Waveform
(Screenshot available in Screenshots folder)

---

## 🎯 Conclusion
This project demonstrates the implementation of a real-time digital system using FSM. It highlights how sequential logic and state transitions can be used to design practical hardware systems like vending machines.

---

## 🚀 Future Scope
- Add support for more coin values
- Display total amount using 7-segment display
- Implement refund mechanism
