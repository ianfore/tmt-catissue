SELECT
    distinct
    TP_Name,
    TP_Desc,
    testcycle_id
FROM
    catissue_plan p,
    testplan tp,
    testresult tr,
    testcycle_info tc
where tp.tp_id = p.identifier
    and tr.tpr_id = tp.identifier
    and testcycle_id = tc.identifier