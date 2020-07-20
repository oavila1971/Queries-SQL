SELECT COUNT(flightID) as total FROM Flights;
SELECT Origin, AVG(ArrDelay) as prom_arribades, AVG(DepDelay) as prom_sortides 
	FROM Flights GROUP BY Origin;
SELECT Origin, colYear, colMonth, AVG(ArrDelay) as prom_arribades
	FROM Flights GROUP BY Origin, colYear, colMonth ORDER BY Origin, colYear, colMonth;
SELECT City, colYear, colMonth, AVG(ArrDelay) as prom_arribades
	FROM Flights INNER JOIN usairports WHERE Origin = IATA GROUP BY City, colYear, colMonth 
    ORDER BY City, colYear, colMonth;
SELECT UniqueCarrier, colYear, colMonth, SUM(Cancelled) as total_cancelled FROM flights
	WHERE Cancelled > 0
	GROUP BY UniqueCarrier, colYear, colMonth 
    ORDER BY total_cancelled DESC, colYear, colMonth;
SELECT TailNum, SUM(Distance) as totalDistance FROM flights
	WHERE TailNum != ""
	GROUP BY TailNum ORDER BY totalDistance DESC;
SELECT UniqueCarrier, AVG(ArrDelay) AS avgDelay FROM flights
	GROUP BY UniqueCarrier HAVING AVG(ArrDelay) > 10 ORDER BY avgDelay DESC;