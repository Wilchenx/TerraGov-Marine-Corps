
/proc/get_total_marines()
	var/count = 0
	var/mob/M
	for(M in player_list)
		if(ishuman(M) && M.mind && !M.mind.special_role) count++
	return count

/proc/job_slot_formula(var/marine_count,var/factor,var/c,var/min,var/max)
	return round(Clamp((marine_count/factor)+c, min, max))

/proc/medic_slot_formula(var/playercount)
	return job_slot_formula(playercount,40,1,2,4)

/proc/engi_slot_formula(var/playercount)
	return job_slot_formula(playercount,50,1,2,3)

/proc/mp_slot_formula(var/playercount)
	return job_slot_formula(playercount,25,2,4,8)

/proc/po_slot_formula(var/playercount)
	return job_slot_formula(playercount,55,1,2,4)

/proc/so_slot_formula(var/playercount)
	return job_slot_formula(playercount,60,1,2,5)

/proc/doc_slot_formula(var/playercount)
	return job_slot_formula(playercount,25,1,3,6)

/proc/rsc_slot_formula(var/playercount)
	return job_slot_formula(playercount,60,0,1,2)

/proc/mt_slot_formula(var/playercount)
	return job_slot_formula(playercount,60,1,2,4)

/proc/ct_slot_formula(var/playercount)
	return job_slot_formula(playercount,50,0,1,3)