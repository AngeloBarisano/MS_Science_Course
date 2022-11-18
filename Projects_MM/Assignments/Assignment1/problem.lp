\ LP format - for model browsing. Use MPS format to capture full model detail.
Minimize
  200 Purc_A[0] + 200 Purc_A[1] + 200 Purc_A[2] + 200 Purc_A[3]
   + 200 Purc_A[4] + 200 Purc_A[5] + 200 Purc_A[6] + 200 Purc_B[0]
   + 200 Purc_B[1] + 200 Purc_B[2] + 200 Purc_B[3] + 200 Purc_B[4]
   + 200 Purc_B[5] + 200 Purc_B[6] + 5 Cab[0] + 5 Cab[1] + 5 Cab[2]
   + 5 Cab[3] + 5 Cab[4] + 5 Cab[5] + 5 Cab[6] + 5 Cba[0] + 5 Cba[1]
   + 5 Cba[2] + 5 Cba[3] + 5 Cba[4] + 5 Cba[5] + 5 Cba[6] + 20 Eab[0]
   + 20 Eab[1] + 20 Eab[2] + 20 Eab[3] + 20 Eab[4] + 20 Eab[5] + 20 Eab[6]
   + 20 Eba[0] + 20 Eba[1] + 20 Eba[2] + 20 Eba[3] + 20 Eba[4] + 20 Eba[5]
   + 20 Eba[6] + 0 Inventory_A[0] + 0 Inventory_A[1] + 0 Inventory_A[2]
   + 0 Inventory_A[3] + 0 Inventory_A[4] + 0 Inventory_A[5]
   + 0 Inventory_A[6] + 0 Inventory_B[0] + 0 Inventory_B[1]
   + 0 Inventory_B[2] + 0 Inventory_B[3] + 0 Inventory_B[4]
   + 0 Inventory_B[5] + 0 Inventory_B[6]
Subject To
 Inventory_A: Purc_A[0] >= 45
 Inventory_A: Purc_A[0] - Cab[0] - Eab[0] + Eba[0] >= 20
 Inventory_A: Purc_A[0] - Cab[0] - Cab[1] + Cba[0] - Eab[0] - Eab[1]
   + Eba[0] + Eba[1] >= 20
 Inventory_A: Purc_A[0] - Cab[0] - Cab[1] - Cab[2] + Cba[0] + Cba[1]
   - Eab[0] - Eab[1] - Eab[2] + Eba[0] + Eba[1] + Eba[2] >= 25
 Inventory_A: Purc_A[0] - Cab[0] - Cab[1] - Cab[2] - Cab[3] + Cba[0]
   + Cba[1] + Cba[2] - Eab[0] - Eab[1] - Eab[2] - Eab[3] + Eba[0] + Eba[1]
   + Eba[2] + Eba[3] >= 15
 Inventory_A: Purc_A[0] - Cab[0] - Cab[1] - Cab[2] - Cab[3] - Cab[4]
   + Cba[0] + Cba[1] + Cba[2] + Cba[3] - Eab[0] - Eab[1] - Eab[2] - Eab[3]
   - Eab[4] + Eba[0] + Eba[1] + Eba[2] + Eba[3] + Eba[4] >= 28
 Inventory_A: Purc_A[0] - Cab[0] - Cab[1] - Cab[2] - Cab[3] - Cab[4]
   - Cab[5] + Cba[0] + Cba[1] + Cba[2] + Cba[3] + Cba[4] - Eab[0] - Eab[1]
   - Eab[2] - Eab[3] - Eab[4] - Eab[5] + Eba[0] + Eba[1] + Eba[2] + Eba[3]
   + Eba[4] + Eba[5] >= 15
 Inventory_B: Purc_B[0] >= 8
 Inventory_B: Purc_B[0] - Cba[0] + Eab[0] - Eba[0] >= 12
 Inventory_B: Purc_B[0] + Cab[0] - Cba[0] - Cba[1] + Eab[0] + Eab[1]
   - Eba[0] - Eba[1] >= 23
 Inventory_B: Purc_B[0] + Cab[0] + Cab[1] - Cba[0] - Cba[1] - Cba[2]
   + Eab[0] + Eab[1] + Eab[2] - Eba[0] - Eba[1] - Eba[2] >= 30
 Inventory_B: Purc_B[0] + Cab[0] + Cab[1] + Cab[2] - Cba[0] - Cba[1]
   - Cba[2] - Cba[3] + Eab[0] + Eab[1] + Eab[2] + Eab[3] - Eba[0] - Eba[1]
   - Eba[2] - Eba[3] >= 12
 Inventory_B: Purc_B[0] + Cab[0] + Cab[1] + Cab[2] + Cab[3] - Cba[0]
   - Cba[1] - Cba[2] - Cba[3] - Cba[4] + Eab[0] + Eab[1] + Eab[2] + Eab[3]
   + Eab[4] - Eba[0] - Eba[1] - Eba[2] - Eba[3] - Eba[4] >= 10
 Inventory_B: Purc_B[0] + Cab[0] + Cab[1] + Cab[2] + Cab[3] + Cab[4]
   - Cba[0] - Cba[1] - Cba[2] - Cba[3] - Cba[4] - Cba[5] + Eab[0] + Eab[1]
   + Eab[2] + Eab[3] + Eab[4] + Eab[5] - Eba[0] - Eba[1] - Eba[2] - Eba[3]
   - Eba[4] - Eba[5] >= 33
 R14: Purc_A[1] + Purc_B[1] = 0
 R15: Purc_A[2] + Purc_B[2] = 0
 R16: Purc_A[3] + Purc_B[3] = 0
 R17: Purc_A[4] + Purc_B[4] = 0
 R18: Purc_A[5] + Purc_B[5] = 0
 R19: Purc_A[6] + Purc_B[6] = 0
 R20: Cab[6] + Cba[6] = 0
Bounds
End
