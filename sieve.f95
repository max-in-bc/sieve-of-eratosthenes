program Sieve
    implicit none
     
    integer :: upper
    character (len = 20) :: upperString
     
    if (IArgc() /= 1) then
        write (*,*) 'Usage: ./sieve_f95 <upper bound>'
        call exit(1)
    end if
    
    call GetArg(1, upperString)
    Read(upperString, '(i10)') upper
    upper = upper + 1
    
    call Eratosthenes(upper)
  
end

subroutine Eratosthenes(upper)
    implicit none
    
    integer, intent (in) :: upper
    integer :: i, counter = 0, prime = 2
    integer, dimension (upper) :: sMap
    
    
    do i = 1, upper
        sMap(i) = i
    end do
    
    do
        do i = prime, upper
            if ((mod(i, prime) == 0) .and. (i /= prime)) then
                sMap(i) = 0
            end if
        end do
    
        i = prime + 1
        do
            prime = sMap(i)
            i = i + 1
        
            if ((prime /= 0) .or. (prime > upper)) exit
        end do
        
        
        if (prime > upper) exit
        
        if ((prime <= upper) .and. (i < upper)) then
            counter = counter + 1
        end if
        
    end do
    
    call PrintResults(counter, upper, sMap)
end subroutine Eratosthenes

subroutine PrintResults(counter, upper, sMap)

    integer :: i, start = 2
    integer, intent(in) :: counter, upper
    integer, dimension(counter + 1) :: finalMap
    integer, intent(inout), dimension(upper) :: sMap
    
    finalMap(1) = 2
    do i = 3, upper
       if ((sMap(i) /= 0) .and. (sMap(i) < upper)) then
           finalMap(start) = sMap(i)
           start = start + 1
       end if
    end do
    
    write (*,*) finalMap
    
end subroutine