X-GM-THRID: 6392958806119153664
X-Received: by 10.129.158.213 with SMTP id v204mr783954ywg.70.1488536398046;
        Fri, 03 Mar 2017 02:19:58 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.53.6 with SMTP id o6ls9949284otc.47.gmail; Fri, 03 Mar
 2017 02:19:57 -0800 (PST)
X-Received: by 10.129.70.84 with SMTP id t81mr794276ywa.146.1488536397605;
        Fri, 03 Mar 2017 02:19:57 -0800 (PST)
Return-Path: <andreas.dilger@intel.com>
Received: from mga09.intel.com (mga09.intel.com. [134.134.136.24])
        by gmr-mx.google.com with ESMTPS id y90si370332pfa.6.2017.03.03.02.19.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Mar 2017 02:19:57 -0800 (PST)
Received-SPF: pass (google.com: domain of andreas.dilger@intel.com designates 134.134.136.24 as permitted sender) client-ip=134.134.136.24;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of andreas.dilger@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=andreas.dilger@intel.com
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 03 Mar 2017 02:19:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.35,236,1484035200"; 
   d="scan'208";a="940179570"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
  by orsmga003.jf.intel.com with ESMTP; 03 Mar 2017 02:19:56 -0800
Received: from fmsmsx118.amr.corp.intel.com (10.18.116.18) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.248.2; Fri, 3 Mar 2017 02:19:56 -0800
Received: from FMSMSX109.amr.corp.intel.com ([169.254.15.88]) by
 fmsmsx118.amr.corp.intel.com ([169.254.1.242]) with mapi id 14.03.0248.002;
 Fri, 3 Mar 2017 02:19:56 -0800
From: "Dilger, Andreas" <andreas.dilger@intel.com>
To: Gargi Sharma <gs051095@gmail.com>
CC: "outreachy-kernel@googlegroups.com" <outreachy-kernel@googlegroups.com>,
	"Drokin, Oleg" <oleg.drokin@intel.com>, "jsimmons@infradead.org"
	<jsimmons@infradead.org>, "gregkh@linuxfoundation.org"
	<gregkh@linuxfoundation.org>
Subject: Re: [PATCH] staging: lustre: Remove lustre_eacl.h
Thread-Topic: [PATCH] staging: lustre: Remove lustre_eacl.h
Thread-Index: AQHSk3zIAs4dp7CBHUqKzGfEUXS4K6GDboqA
Date: Fri, 3 Mar 2017 10:19:56 +0000
Message-ID: <FF23859C-EF52-4667-A6A2-E68668078E42@intel.com>
References: <1488476575-16322-1-git-send-email-gs051095@gmail.com>
In-Reply-To: <1488476575-16322-1-git-send-email-gs051095@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-originating-ip: [10.254.124.201]
Content-Type: text/plain; charset="us-ascii"
Content-ID: <EA6901662E8CF644843E882C4E3C47C9@intel.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Return-Path: andreas.dilger@intel.com

On Mar 2, 2017, at 10:42, Gargi Sharma <gs051095@gmail.com> wrote:
>=20
> The structures and the macros in the header file are not used
> anywhere inside the kernel (verified by using grep). The structures
> and macros were leftover from the patch
> 341f1f0affed1c24712f37c95bb654b3b33ab2c6 "staging: lustre: remove
> remote client support". Also, removed the include statements for
> lustre_eacl.h.
>=20
> Signed-off-by: Gargi Sharma <gs051095@gmail.com>

Reviewed-by: Andreas Dilger <andreas.dilger@intel.com>

> ---
> .../staging/lustre/lustre/include/lustre_eacl.h    | 74 -----------------=
-----
> .../staging/lustre/lustre/llite/llite_internal.h   |  1 -
> drivers/staging/lustre/lustre/llite/xattr.c        |  1 -
> 3 files changed, 76 deletions(-)
> delete mode 100644 drivers/staging/lustre/lustre/include/lustre_eacl.h
>=20
> diff --git a/drivers/staging/lustre/lustre/include/lustre_eacl.h b/driver=
s/staging/lustre/lustre/include/lustre_eacl.h
> deleted file mode 100644
> index c198eda..0000000
> --- a/drivers/staging/lustre/lustre/include/lustre_eacl.h
> +++ /dev/null
> @@ -1,74 +0,0 @@
> -/*
> - * GPL HEADER START
> - *
> - * DO NOT ALTER OR REMOVE COPYRIGHT NOTICES OR THIS FILE HEADER.
> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License version 2 only,
> - * as published by the Free Software Foundation.
> - *
> - * This program is distributed in the hope that it will be useful, but
> - * WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
> - * General Public License version 2 for more details (a copy is included
> - * in the LICENSE file that accompanied this code).
> - *
> - * You should have received a copy of the GNU General Public License
> - * version 2 along with this program; If not, see
> - * http://www.gnu.org/licenses/gpl-2.0.html
> - *
> - * GPL HEADER END
> - */
> -/*
> - * Copyright (c) 2008, 2010, Oracle and/or its affiliates. All rights re=
served.
> - * Use is subject to license terms.
> - */
> -/*
> - * Copyright (c) 2011, 2012, Intel Corporation.
> - */
> -/*
> - * This file is part of Lustre, http://www.lustre.org/
> - * Lustre is a trademark of Sun Microsystems, Inc.
> - *
> - * lustre/lustre/include/lustre_idmap.h
> - *
> - * MDS data structures.
> - * See also lustre_idl.h for wire formats of requests.
> - */
> -
> -#ifndef _LUSTRE_EACL_H
> -#define _LUSTRE_EACL_H
> -
> -/** \defgroup eacl eacl
> - *
> - * @{
> - */
> -
> -#ifdef CONFIG_FS_POSIX_ACL
> -
> -#include <linux/fs.h>
> -#include <linux/posix_acl_xattr.h>
> -
> -struct ext_acl_xattr_entry {
> -	__u16		   e_tag;
> -	__u16		   e_perm;
> -	__u32		   e_id;
> -	__u32		   e_stat;
> -};
> -
> -struct ext_acl_xattr_header {
> -	__u32 a_count;
> -	struct ext_acl_xattr_entry a_entries[0];
> -};
> -
> -#define CFS_ACL_XATTR_SIZE(count, prefix) \
> -	(sizeof(prefix ## _header) + (count) * sizeof(prefix ## _entry))
> -
> -#define CFS_ACL_XATTR_COUNT(size, prefix) \
> -	(((size) - sizeof(prefix ## _header)) / sizeof(prefix ## _entry))
> -
> -#endif /* CONFIG_FS_POSIX_ACL */
> -
> -/** @} eacl */
> -
> -#endif
> diff --git a/drivers/staging/lustre/lustre/llite/llite_internal.h b/drive=
rs/staging/lustre/lustre/llite/llite_internal.h
> index ecdfd0c..15bd75f 100644
> --- a/drivers/staging/lustre/lustre/llite/llite_internal.h
> +++ b/drivers/staging/lustre/lustre/llite/llite_internal.h
> @@ -35,7 +35,6 @@
> #include "../include/lustre_debug.h"
> #include "../include/lustre_ver.h"
> #include "../include/lustre_disk.h"	/* for s2sbi */
> -#include "../include/lustre_eacl.h"
> #include "../include/lustre_linkea.h"
>=20
> /* for struct cl_lock_descr and struct cl_io */
> diff --git a/drivers/staging/lustre/lustre/llite/xattr.c b/drivers/stagin=
g/lustre/lustre/llite/xattr.c
> index 421cc04..bcbc77e 100644
> --- a/drivers/staging/lustre/lustre/llite/xattr.c
> +++ b/drivers/staging/lustre/lustre/llite/xattr.c
> @@ -40,7 +40,6 @@
> #include "../include/obd_support.h"
> #include "../include/lustre_dlm.h"
> #include "../include/lustre_ver.h"
> -#include "../include/lustre_eacl.h"
>=20
> #include "llite_internal.h"
>=20
> --=20
> 2.7.4
>=20

Cheers, Andreas
--
Andreas Dilger
Lustre Principal Architect
Intel Corporation








