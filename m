X-GM-THRID: 6200611211635064832
X-Received: by 10.66.252.6 with SMTP id zo6mr7365142pac.29.1443693949123;
        Thu, 01 Oct 2015 03:05:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.60.34 with SMTP id e2ls182400igr.4.canary; Thu, 01 Oct 2015
 03:05:48 -0700 (PDT)
X-Received: by 10.66.191.37 with SMTP id gv5mr7347551pac.2.1443693948841;
        Thu, 01 Oct 2015 03:05:48 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x235.google.com (mail-pa0-x235.google.com. [2607:f8b0:400e:c03::235])
        by gmr-mx.google.com with ESMTPS id w5si808520pbt.1.2015.10.01.03.05.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Oct 2015 03:05:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) client-ip=2607:f8b0:400e:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x235.google.com with SMTP id ex6so70453494pac.0
        for <outreachy-kernel@googlegroups.com>; Thu, 01 Oct 2015 03:05:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:content-type;
        bh=bstn2yIZmLsprEnO2lpDhKrcJUK3tA3uFABS7yqBgS8=;
        b=vH6ACG4if3x6LJDn1CzSBomVMey2Fs/enC6dhasYbAAnvlzB6NBPvtbaov0siFEhdX
         bTAJGL7LwAxIVCxKGQ+F53z/zIvpebEh+5YNDU40Sxqjj4fP/Pz688MOdpGZO9wL9MQM
         ii2FL1WTA2uthkGSvvlof7UGDLf0D+fSbZKzMPrcjuzio0EBrCBWHwxgujKE5Ldp9kWo
         J9H29uqOSuaQrd4Md1P3YRH00FRaSJUhKkpwG50T8096vHYPW87ZtsatAcN1+TRvDrRm
         22qKrzVAUJ+Cl8rvHoo0meNv5X3ZoLwNOUlMpspWQRJXVmJakidq5kdVu8iMdmsh0l5/
         /UhA==
X-Received: by 10.66.121.229 with SMTP id ln5mr10889881pab.133.1443693948725;
        Thu, 01 Oct 2015 03:05:48 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from [10.30.0.216] ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id jd9sm5653735pbd.53.2015.10.01.03.05.45
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 01 Oct 2015 03:05:48 -0700 (PDT)
Date: Thu, 1 Oct 2015 15:35:41 +0530 (IST)
From: Shraddha Barke <shraddha.6596@gmail.com>
X-X-Sender: root@shraddha-370R4E-370R4V-370R5E-3570RE-370R5V
To: Arnd Bergmann <arnd@arndb.de>
cc: outreachy-kernel@googlegroups.com, 
    Shraddha Barke <shraddha.6596@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 1/2] Staging: lustre: ptlrpc: Make
 functions static
In-Reply-To: <1696311.OJv2CH1NlN@wuerfel>
Message-ID: <alpine.DEB.2.11.1510011534180.9108@shraddha-370R4E-370R4V-370R5E-3570RE-370R5V>
References: <1443692278-9074-1-git-send-email-shraddha.6596@gmail.com> <1443692278-9074-2-git-send-email-shraddha.6596@gmail.com> <1696311.OJv2CH1NlN@wuerfel>
User-Agent: Alpine 2.11 (DEB 23 2013-08-11)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII; format=flowed
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150204.560D057B.011A,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  



On Thu, 1 Oct 2015, Arnd Bergmann wrote:

> On Thursday 01 October 2015 15:07:57 Shraddha Barke wrote:
>> Since these functions are not called anywhere apart from this particular
>> file, declare them as static.
>>
>> Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
>>
>
> Reviewed-by: Arnd Bergmann <arnd@arndb.de>
>
> Note that there are hundreds more symbols in lustre that should be made static.
> Most of them are harder to find because they have a declaration in a header file
> despite being only used in one place.
>
> Coincidentally I've recently checked this for a subset of lustre while removing
> completely unused functions. Have a look at the list below to see if you can
> do more of those.

Yes I'll work on these.

Thanks :)
>
> 	Arnd
>
> find build/tmp/drivers/staging/lustre/lustre/{ptlrpc,obdclass}/ -name \*.o | \
> 	grep -v built-in | xargs nm | grep -w [A-TV-Z] | grep -v __ksymtab |
> 	grep -v __crc | cut -f 3 -d \  | sort -u > defs
> find build/tmp/drivers/staging/lustre/ -name \*.o | grep -v built-in | \
> 	xargs nm | grep -w U | cut -f 11- -d\  | sort -u > refs
> diff -u defs refs | grep ^-  | cut -f 2 -d-
>
> __ptlrpc_free_bulk
> cache_stats_init
> cache_stats_print
> capa_add
> capa_cpy
> capa_decrypt_id
> capa_encrypt_id
> capa_hmac
> capa_lookup
> cl_env_peek
> cl_io_cancel
> cl_io_rw_advance
> cl_lock_enclosure
> cl_lock_extransit
> cl_lock_intransit
> cl_lock_mutex_try
> cl_lock_state_wait
> cl_page_list_assume
> cl_page_list_del
> cl_page_list_discard
> cl_page_list_fini
> cl_sync_io_init
> cl_sync_io_wait
> class_add_conn
> class_add_profile
> class_attach
> class_cleanup
> class_config_dump_handler
> class_config_parse_rec
> class_del_conn
> class_detach
> class_get_type
> class_match_param
> class_resolve_dev_name
> class_search_type
> class_setup
> cleanup_capa_hash
> deuuidify
> do_lcfg
> dt_acct_features
> dt_declare_version_set
> dt_device_fini
> dt_device_init
> dt_directory_features
> dt_find_or_create
> dt_global_fini
> dt_global_init
> dt_index_read
> dt_index_walk
> dt_key
> dt_lfsck_features
> dt_locate_at
> dt_lookup_dir
> dt_mode_to_dft
> dt_object_fini
> dt_object_init
> dt_otable_features
> dt_path_parser
> dt_quota_glb_features
> dt_quota_slv_features
> dt_read
> dt_record_read
> dt_record_write
> dt_store_open
> dt_store_resolve
> dt_try_as_dir
> dt_txn_callback_add
> dt_txn_callback_del
> dt_txn_hook_commit
> dt_txn_hook_start
> dt_txn_hook_stop
> dt_version_get
> dt_version_set
> dump_exports
> dump_obdo
> iattr_from_obdo
> init_capa_hash
> interval_expand
> interval_find
> interval_is_overlapped
> interval_iterate
> interval_iterate_reverse
> interval_search
> ldlm_add_bl_work_item
> ldlm_add_cp_work_item
> ldlm_blocking_ast
> ldlm_blocking_ast_nocheck
> ldlm_cancel_locks_for_export
> ldlm_cancel_locks_for_export_cb
> ldlm_cancel_lru_local
> ldlm_cli_cancel_req
> ldlm_cli_convert
> ldlm_cli_enqueue_local
> ldlm_cli_inactive_namespace_list
> ldlm_convert_policy_to_wire
> ldlm_destroy_export
> ldlm_dump_granted_max
> ldlm_enqueue_pack
> ldlm_errno2error
> ldlm_expired_completion_wait
> ldlm_flock_blocking_ast
> ldlm_get_enq_timeout
> ldlm_glimpse_ast
> ldlm_init_export
> ldlm_kobj
> ldlm_lock_add_to_lru
> ldlm_lock_add_to_lru_nolock
> ldlm_lock_destroy_internal
> ldlm_lock_downgrade
> ldlm_lock_fail_match
> ldlm_lock_touch_in_lru
> ldlm_namespace_foreach
> ldlm_namespace_free
> ldlm_namespace_get_return
> ldlm_namespace_register
> ldlm_namespace_sysfs_register
> ldlm_namespace_sysfs_unregister
> ldlm_namespace_unregister
> ldlm_ns_fid_hash_ops
> ldlm_ns_hash_defs
> ldlm_ns_hash_ops
> ldlm_pool_get_clv
> ldlm_pool_get_limit
> ldlm_pool_recalc
> ldlm_pool_set_limit
> ldlm_pool_set_slv
> ldlm_pool_setup
> ldlm_pool_shrink
> ldlm_pools_recalc
> ldlm_process_flock_lock
> ldlm_refresh_waiting_lock
> ldlm_register_intent
> ldlm_reprocess_all_ns
> ldlm_resource_foreach
> ldlm_resource_insert_lock_after
> ldlm_resource_putref_locked
> ldlm_svc_kset
> ldlm_typename
> ldlm_work_gl_ast_lock
> llog_cat_id2handle
> llog_cat_process_or_fork
> llog_thread_key
> lock_handle_ops
> lprocfs_dt_rd_blksize
> lprocfs_dt_rd_filesfree
> lprocfs_dt_rd_filestotal
> lprocfs_dt_rd_kbytesavail
> lprocfs_dt_rd_kbytesfree
> lprocfs_dt_rd_kbytestotal
> lprocfs_stats_seq_fops
> lprocfs_write_frac_u64_helper
> lu_context_key_quiesce
> lu_context_key_revive
> lu_context_refill
> lu_dev_add_linkage
> lu_device_put
> lu_global_key
> lu_object_find
> lu_site_hash_ops
> lustre_attr_show
> lustre_attr_store
> lustre_fill_super
> lustre_fs_type
> lustre_init_lsi
> lustre_mount
> lustre_pack_reply_v2
> lustre_profile_list
> lustre_put_lsi
> lustre_start_mgc
> lustre_start_simple
> lustre_swab_ldlm_lock_desc
> lustre_swab_ldlm_policy_data
> lustre_swab_ldlm_res_id
> lustre_swab_ldlm_resource_desc
> lustre_swab_ll_fid
> lustre_swab_llog_id
> lustre_swab_obdo
> mgc_start_lock
> nrs_policy_get_info_locked
> obd_export_nid2str
> obd_init_checks
> obd_zombie_impexp_cull
> ptl_get_pid
> ptlrpc_interrupted_set
> ptlrpc_new_bulk
> ptlrpc_next_xid
> ptlrpc_nrs_policy_register
> ptlrpc_pinger_remove_timeouts
> ptlrpc_register_bulk
> ptlrpc_retain_replayable_request
> ptlrpc_server_drop_request
> ptlrpc_start_thread
> ptlrpc_start_threads
> ptlrpc_stop_all_threads
> ptlrpc_unregister_reply
> ptlrpcd_free
> ptlrpcd_start
> ptlrpcd_stop
> req_capsule_field_present
> req_capsule_init_area
> server_name2fsname
> server_name2index
> sptlrpc_cli_wrap_bulk
> sptlrpc_parse_rule
> sptlrpc_req_replace_dead_ctx
> sptlrpc_rule_set_choose
> sptlrpc_rule_set_expand
> sptlrpc_rule_set_free
> sptlrpc_rule_set_merge
> sptlrpc_sec_get
> sptlrpc_secflags2str
> sptlrpc_svc_install_rvs_ctx
>
>

