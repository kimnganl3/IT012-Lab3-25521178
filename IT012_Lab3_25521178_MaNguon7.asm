# Lê Thi Kim Ngân - 25521178 - Ma nguon 7 - Tong hop ba tháng voi du lieu cua riêng sinh viên
.data
prompt: .asciiz "Nhap chi so (kWh): "
m1:     .asciiz "Thang 1: "
m2:     .asciiz "Thang 2: "
m3:     .asciiz "Thang 3: "
tot:    .asciiz "Tong:    "
nl:     .asciiz "\n"
 
.text
.globl main
main:
    # --- doc reading 0 ---
    li $v0, 4
    la $a0, prompt
    syscall
    li $v0, 5
    syscall
    add $s0, $v0, $zero
    
    #--- doc reading 1 ---
    li $v0, 4
    la $a0, prompt
    syscall
    li $v0, 5
    syscall
    add $s1, $v0, $zero
    
    #--- doc reading 2 ---
    li $v0, 4
    la $a0, prompt
    syscall
    li $v0, 5
    syscall
    add $s2, $v0, $zero
    
    #--- doc reading 3 ---
    li $v0, 4
    la $a0, prompt
    syscall
    li $v0, 5
    syscall
    add $s3, $v0, $zero
    
    # ---  Tính toán ?i?n n?ng tiêu th? ---
    sub  $t0, $s1, $s0       # usage1 = reading1 - reading0
    sub  $t1, $s2, $s1       # usage2 = reading2 - reading1
    sub  $t2, $s3, $s2       # usage3 = reading3 - reading2
    
    add  $v1, $t0, $t1       # Tính t?ng t?m th?i
    add  $t3, $v1, $t2       # total = usage1 + usage2 + usage3
    
    # --- In k?t qu? theo ?úng ??nh d?ng yêu c?u ---
    #In thang 1
    li $v0, 4
    la $a0, m1
    syscall
    li $v0, 1
    add $a0, $t0, $zero
    syscall
    li $v0, 4
    la $a0, nl
    syscall
    
    #In thang 2
    li $v0, 4
    la $a0, m2
    syscall
    li $v0, 1
    add $a0, $t1, $zero
    syscall
    li $v0, 4
    la $a0, nl
    syscall
    
    #In thang 3
    li $v0, 4
    la $a0, m3
    syscall
    li $v0, 1
    add $a0, $t2, $zero
    syscall
    li $v0, 4
    la $a0, nl
    syscall
    
    #In tong
    li $v0, 4
    la $a0, tot
    syscall
    li $v0, 1
    add $a0, $t3, $zero
    syscall
    li $v0, 4
    la $a0, nl
    syscall
    
    # --- K?t thúc ch??ng trình ---
    li   $v0, 10
    syscall
