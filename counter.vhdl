```vhdl
entity counter is
  Port ( clk : in  STD_LOGIC;
              reset : in  STD_LOGIC;
              count : out  integer range 0 to 9);
end entity;

architecture behavioral of counter is
  signal internal_count : integer range 0 to 9 := 0;
begin
  process (clk, reset)
  begin
    if reset = '1' then
      internal_count <= 0;
    elsif rising_edge(clk) then
      if internal_count = 9 then
        internal_count <= 0;
      else
        internal_count <= internal_count + 1;
      end if;
    end if;
  end process;
  count <= internal_count;
end architecture;
```