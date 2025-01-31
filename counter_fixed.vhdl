```vhdl
entity counter_fixed is
  Port ( clk : in  STD_LOGIC;
              reset : in  STD_LOGIC;
              count : out  integer range 0 to 15); -- Increased range
end entity;

architecture behavioral of counter_fixed is
  signal internal_count : integer range 0 to 15 := 0; -- Increased range
begin
  process (clk, reset)
  begin
    if reset = '1' then
      internal_count <= 0;
    elsif rising_edge(clk) then
      if internal_count = 15 then -- Adjusted upper bound
        internal_count <= 0;
      else
        internal_count <= internal_count + 1;
      end if;
    end if;
  end process;
  count <= internal_count;
end architecture;
```