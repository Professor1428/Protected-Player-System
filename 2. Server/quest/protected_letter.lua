quest protected_letter begin
	state start begin
		when login or levelup with pc.get_level() >= 15 begin
			set_state(protected_player)
		end
	end

	state protected_player begin
		when letter begin
			send_letter(" ����� ������� ")
		end
		
		when button or info begin
			say_title(" [���� �������]")
			say(" 1- ��� ��� ���� � �� ����� ����� ��� ������ ")
			say(" 2- ��� ��� ���� � �� ����� ��� �� .")
			say(" 3- ��� ��� ���� � �� ���� ���� ��� �� ���� .")
			say(" 4- ��� ��� ���� � �� ���� ���� ����� ��� ������ �� .")
			say(" 5- ��� ��� ���� � ����� ������ ������� ������ �������� .")
			say(" 6- ��� ��� ���� �� ���� ����� � ��� �� ���� ������ ���� �� 15 .")
			say(" 7- ��� ��� ���� �� ���� ����� � ��� �� ������ ���� .")
			say(" 8- ��� ��� ���� �� ���� ����� � ��� �� ������ �� ������ .")
			say(" 9- ��� �� ����� �� ���� ����� � ��� �� ������ �� ��� ���� .")
			local s = select(" ����� ������� ", " ����� ������� ", " ����� ����� ������� ")
				if s == 1 then
					command("protected_true")
				elseif s == 2 then
					command("protected_false")
			end
		end
	end
end
