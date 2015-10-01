X-GM-THRID: 6200611211635064832
X-Received: by 10.180.107.167 with SMTP id hd7mr334436wib.6.1443693786774;
        Thu, 01 Oct 2015 03:03:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.8.165 with SMTP id s5ls97950wia.44.canary; Thu, 01 Oct
 2015 03:03:06 -0700 (PDT)
X-Received: by 10.195.12.234 with SMTP id et10mr1265167wjd.2.1443693786443;
        Thu, 01 Oct 2015 03:03:06 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.13])
        by gmr-mx.google.com with ESMTPS id ch7si68909wib.2.2015.10.01.03.03.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Oct 2015 03:03:06 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.17.13 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.13;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.13 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([149.172.15.242]) by mrelayeu.kundenserver.de
 (mreue102) with ESMTPSA (Nemesis) id 0M4Hw3-1aYs4w3O1z-00rq07; Thu, 01 Oct
 2015 12:03:05 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Shraddha Barke <shraddha.6596@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 1/2] Staging: lustre: ptlrpc: Make functions static
Date: Thu, 01 Oct 2015 12:03:05 +0200
Message-ID: <1696311.OJv2CH1NlN@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <1443692278-9074-2-git-send-email-shraddha.6596@gmail.com>
References: <1443692278-9074-1-git-send-email-shraddha.6596@gmail.com> <1443692278-9074-2-git-send-email-shraddha.6596@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:wLbLoRVtfvgTaHKbDCR4XL27mMl6aPt56c1WeSNfowUcHUPtiAN
 CkRR9+uTxBSgmmpel5b8YA1Nz1oEFCYYRSo5Y796lRgL/AGe+O3jxpqt5Wf8sOch0WS3wlN
 9x8+QsEmYIxjkV/gqvDTaU8m7SqCM30NSJ53A/FTOjofzEID1B+HNaJn1wTlSnIk9RdaAbt
 PO4j9eec6ypUPYQ1ug3YQ==
X-UI-Out-Filterresults: notjunk:1;V01:K0:IZCHDEfKwfA=:DbtiWrWvkTJysmujcQLCsJ
 Xkcb3hd5ekMk2GH2RrBnLDad4J3QflffEQdGe0sIWlFJfT+OcvBc6G+/2iEbUWbBplSzy25lU
 LZWDNgXquvAJeWlRCuYwh6BlZ/4/YXUhvvPdFIiOLH0oefnDATLE8sP1TEESRSAxsCdMk9gmk
 DuhW+jXL/R54hyz6qvA0/c8QjEvLLAluh7QPXnercQvyeHPqxxEpij7O+QVy9bfwXNEc7jxjN
 8w9xGAd3d0VLkRp0kDUoIKTNHsLqn6sfLd3BeYomiIPayOVshA85B2I3/wIt2eqdFwG2o295y
 Smj4MMKIFIXnkWXKzhOXwWpLjY6JlyDScJGRziumSfNDN5V6YdeJMFlS0MgGcv5Ry/F1jtqA7
 Xp04z27mjkCzM6+TU+tQu3rdwj+qVIYoDdaDOKyMVqN2dDXVgTupXOlSZXymXLEjb6YseRqvs
 a0jP6anetISJvEwf2Wzja9eyukqTe8KCb5sbNpHlT1d9XUeUdV11fVTlWtvwficBegMAVXM+u
 VXLCq646uEpaKiOHFW+OSjtUrjhIXRnsyD6LmLh4dmd/brP82NsxLd+c9yoKRjn1a6Zu49CWD
 KkEWneP3EuO6P6u9HmHMHplXurhHjC2LWCp10ykXXIxyjrz38n4vWvdBbGsMxpxbcCaMQFD90
 JBPcz5y/VBi/9xYY/rovWH4hUdIsYcr0ghXwHsea911a//aGJS8g59QPYnZgBjvJt8FWVPZxF
 1yShCMUQZE/PlA3l

On Thursday 01 October 2015 15:07:57 Shraddha Barke wrote:
> Since these functions are not called anywhere apart from this particular
> file, declare them as static.
> 
> Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
> 

Reviewed-by: Arnd Bergmann <arnd@arndb.de>

Note that there are hundreds more symbols in lustre that should be made static.
Most of them are harder to find because they have a declaration in a header file
despite being only used in one place.

Coincidentally I've recently checked this for a subset of lustre while removing
completely unused functions. Have a look at the list below to see if you can
do more of those.

	Arnd

find build/tmp/drivers/staging/lustre/lustre/{ptlrpc,obdclass}/ -name \*.o | \
	grep -v built-in | xargs nm | grep -w [A-TV-Z] | grep -v __ksymtab | 
	grep -v __crc | cut -f 3 -d \  | sort -u > defs
find build/tmp/drivers/staging/lustre/ -name \*.o | grep -v built-in | \
	xargs nm | grep -w U | cut -f 11- -d\  | sort -u > refs
diff -u defs refs | grep ^-  | cut -f 2 -d-

__ptlrpc_free_bulk
cache_stats_init
cache_stats_print
capa_add
capa_cpy
capa_decrypt_id
capa_encrypt_id
capa_hmac
capa_lookup
cl_env_peek
cl_io_cancel
cl_io_rw_advance
cl_lock_enclosure
cl_lock_extransit
cl_lock_intransit
cl_lock_mutex_try
cl_lock_state_wait
cl_page_list_assume
cl_page_list_del
cl_page_list_discard
cl_page_list_fini
cl_sync_io_init
cl_sync_io_wait
class_add_conn
class_add_profile
class_attach
class_cleanup
class_config_dump_handler
class_config_parse_rec
class_del_conn
class_detach
class_get_type
class_match_param
class_resolve_dev_name
class_search_type
class_setup
cleanup_capa_hash
deuuidify
do_lcfg
dt_acct_features
dt_declare_version_set
dt_device_fini
dt_device_init
dt_directory_features
dt_find_or_create
dt_global_fini
dt_global_init
dt_index_read
dt_index_walk
dt_key
dt_lfsck_features
dt_locate_at
dt_lookup_dir
dt_mode_to_dft
dt_object_fini
dt_object_init
dt_otable_features
dt_path_parser
dt_quota_glb_features
dt_quota_slv_features
dt_read
dt_record_read
dt_record_write
dt_store_open
dt_store_resolve
dt_try_as_dir
dt_txn_callback_add
dt_txn_callback_del
dt_txn_hook_commit
dt_txn_hook_start
dt_txn_hook_stop
dt_version_get
dt_version_set
dump_exports
dump_obdo
iattr_from_obdo
init_capa_hash
interval_expand
interval_find
interval_is_overlapped
interval_iterate
interval_iterate_reverse
interval_search
ldlm_add_bl_work_item
ldlm_add_cp_work_item
ldlm_blocking_ast
ldlm_blocking_ast_nocheck
ldlm_cancel_locks_for_export
ldlm_cancel_locks_for_export_cb
ldlm_cancel_lru_local
ldlm_cli_cancel_req
ldlm_cli_convert
ldlm_cli_enqueue_local
ldlm_cli_inactive_namespace_list
ldlm_convert_policy_to_wire
ldlm_destroy_export
ldlm_dump_granted_max
ldlm_enqueue_pack
ldlm_errno2error
ldlm_expired_completion_wait
ldlm_flock_blocking_ast
ldlm_get_enq_timeout
ldlm_glimpse_ast
ldlm_init_export
ldlm_kobj
ldlm_lock_add_to_lru
ldlm_lock_add_to_lru_nolock
ldlm_lock_destroy_internal
ldlm_lock_downgrade
ldlm_lock_fail_match
ldlm_lock_touch_in_lru
ldlm_namespace_foreach
ldlm_namespace_free
ldlm_namespace_get_return
ldlm_namespace_register
ldlm_namespace_sysfs_register
ldlm_namespace_sysfs_unregister
ldlm_namespace_unregister
ldlm_ns_fid_hash_ops
ldlm_ns_hash_defs
ldlm_ns_hash_ops
ldlm_pool_get_clv
ldlm_pool_get_limit
ldlm_pool_recalc
ldlm_pool_set_limit
ldlm_pool_set_slv
ldlm_pool_setup
ldlm_pool_shrink
ldlm_pools_recalc
ldlm_process_flock_lock
ldlm_refresh_waiting_lock
ldlm_register_intent
ldlm_reprocess_all_ns
ldlm_resource_foreach
ldlm_resource_insert_lock_after
ldlm_resource_putref_locked
ldlm_svc_kset
ldlm_typename
ldlm_work_gl_ast_lock
llog_cat_id2handle
llog_cat_process_or_fork
llog_thread_key
lock_handle_ops
lprocfs_dt_rd_blksize
lprocfs_dt_rd_filesfree
lprocfs_dt_rd_filestotal
lprocfs_dt_rd_kbytesavail
lprocfs_dt_rd_kbytesfree
lprocfs_dt_rd_kbytestotal
lprocfs_stats_seq_fops
lprocfs_write_frac_u64_helper
lu_context_key_quiesce
lu_context_key_revive
lu_context_refill
lu_dev_add_linkage
lu_device_put
lu_global_key
lu_object_find
lu_site_hash_ops
lustre_attr_show
lustre_attr_store
lustre_fill_super
lustre_fs_type
lustre_init_lsi
lustre_mount
lustre_pack_reply_v2
lustre_profile_list
lustre_put_lsi
lustre_start_mgc
lustre_start_simple
lustre_swab_ldlm_lock_desc
lustre_swab_ldlm_policy_data
lustre_swab_ldlm_res_id
lustre_swab_ldlm_resource_desc
lustre_swab_ll_fid
lustre_swab_llog_id
lustre_swab_obdo
mgc_start_lock
nrs_policy_get_info_locked
obd_export_nid2str
obd_init_checks
obd_zombie_impexp_cull
ptl_get_pid
ptlrpc_interrupted_set
ptlrpc_new_bulk
ptlrpc_next_xid
ptlrpc_nrs_policy_register
ptlrpc_pinger_remove_timeouts
ptlrpc_register_bulk
ptlrpc_retain_replayable_request
ptlrpc_server_drop_request
ptlrpc_start_thread
ptlrpc_start_threads
ptlrpc_stop_all_threads
ptlrpc_unregister_reply
ptlrpcd_free
ptlrpcd_start
ptlrpcd_stop
req_capsule_field_present
req_capsule_init_area
server_name2fsname
server_name2index
sptlrpc_cli_wrap_bulk
sptlrpc_parse_rule
sptlrpc_req_replace_dead_ctx
sptlrpc_rule_set_choose
sptlrpc_rule_set_expand
sptlrpc_rule_set_free
sptlrpc_rule_set_merge
sptlrpc_sec_get
sptlrpc_secflags2str
sptlrpc_svc_install_rvs_ctx


