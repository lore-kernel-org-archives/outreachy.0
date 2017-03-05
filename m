X-GM-THRID: 6392958806119153664
X-Received: by 10.99.61.207 with SMTP id k198mr4119334pga.3.1488694532594;
        Sat, 04 Mar 2017 22:15:32 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.61.119 with SMTP id a110ls594828otc.29.gmail; Sat, 04 Mar
 2017 22:15:32 -0800 (PST)
X-Received: by 10.157.11.109 with SMTP id p42mr4405953otd.14.1488694532271;
        Sat, 04 Mar 2017 22:15:32 -0800 (PST)
Received: by 10.55.73.143 with SMTP id w137msqka;
        Sat, 4 Mar 2017 16:52:35 -0800 (PST)
X-Received: by 10.46.88.9 with SMTP id m9mr1435920ljb.25.1488675154517;
        Sat, 04 Mar 2017 16:52:34 -0800 (PST)
Return-Path: <jsimmons@infradead.org>
Received: from casper.infradead.org (casper.infradead.org. [2001:770:15f::2])
        by gmr-mx.google.com with ESMTPS id v201si500153wmv.3.2017.03.04.16.52.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 04 Mar 2017 16:52:34 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of jsimmons@infradead.org designates 2001:770:15f::2 as permitted sender) client-ip=2001:770:15f::2;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@infradead.org;
       spf=pass (google.com: best guess record for domain of jsimmons@infradead.org designates 2001:770:15f::2 as permitted sender) smtp.mailfrom=jsimmons@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Type:MIME-Version:References:
	Message-ID:In-Reply-To:Subject:cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	 bh=hFoQwirnFQjRfX/0RUT0DdEOJnb/z5sZHYY91jiz2Aw=; b=HhrdIW1XV7JU40ZE5vi4c0aOp
	eovpk6tGMvn5aInzRg+tf1fTUSyw2I/PwmMf9FndyXqXpkOlYtTo0iDeLsrOtZfE5h1NaSmuaNSxZ
	uE5Untf1HQeKxMT6hVokJcLyCShgx6mJhAtURdqp2JOpJnLbcfdzmqGf1RB7+yOaHlcVhk1QjE053
	u0A0VE/wTY8lqRI6XP4S8QVU5FFuOgSar1JX+fLsMUrqRmeAljFHmFKU+LSLU1nd+RBlhaOlatmhj
	Q6qca3GAaC7nsgGaF2sezR3gmB044A8WjyHZ12RE2ol3LqzWBTwCcgq/zC4oASNLu/xO48oPUlS8d
	m6wEFPaRg==;
Received: from jsimmons (helo=localhost)
	by casper.infradead.org with local-esmtp (Exim 4.87 #1 (Red Hat Linux))
	id 1ckKPX-00031A-DO; Sun, 05 Mar 2017 00:52:33 +0000
Date: Sun, 5 Mar 2017 00:52:31 +0000 (GMT)
From: James Simmons <jsimmons@infradead.org>
To: Gargi Sharma <gs051095@gmail.com>
cc: outreachy-kernel@googlegroups.com, oleg.drokin@intel.com, 
    andreas.dilger@intel.com, gregkh@linuxfoundation.org
Subject: Re: [PATCH] staging: lustre: Remove lustre_eacl.h
In-Reply-To: <1488476575-16322-1-git-send-email-gs051095@gmail.com>
Message-ID: <alpine.LFD.2.20.1703050052210.10898@casper.infradead.org>
References: <1488476575-16322-1-git-send-email-gs051095@gmail.com>
User-Agent: Alpine 2.20 (LFD 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20170305_005231_477191_A5272DB1 
X-CRM114-Status: GOOD (  19.21  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: SpamAssassin version 3.4.1 on casper.infradead.org summary:
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 NO_RELAYS              Informational: message was not relayed via SMTP
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]


> The structures and the macros in the header file are not used
> anywhere inside the kernel (verified by using grep). The structures
> and macros were leftover from the patch
> 341f1f0affed1c24712f37c95bb654b3b33ab2c6 "staging: lustre: remove
> remote client support". Also, removed the include statements for
> lustre_eacl.h.
> 
> Signed-off-by: Gargi Sharma <gs051095@gmail.com>

Reviewed-by: James Simmons <jsimmons@infradead.org>

> ---
>  .../staging/lustre/lustre/include/lustre_eacl.h    | 74 ----------------------
>  .../staging/lustre/lustre/llite/llite_internal.h   |  1 -
>  drivers/staging/lustre/lustre/llite/xattr.c        |  1 -
>  3 files changed, 76 deletions(-)
>  delete mode 100644 drivers/staging/lustre/lustre/include/lustre_eacl.h
> 
> diff --git a/drivers/staging/lustre/lustre/include/lustre_eacl.h b/drivers/staging/lustre/lustre/include/lustre_eacl.h
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
> - * Copyright (c) 2008, 2010, Oracle and/or its affiliates. All rights reserved.
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
> diff --git a/drivers/staging/lustre/lustre/llite/llite_internal.h b/drivers/staging/lustre/lustre/llite/llite_internal.h
> index ecdfd0c..15bd75f 100644
> --- a/drivers/staging/lustre/lustre/llite/llite_internal.h
> +++ b/drivers/staging/lustre/lustre/llite/llite_internal.h
> @@ -35,7 +35,6 @@
>  #include "../include/lustre_debug.h"
>  #include "../include/lustre_ver.h"
>  #include "../include/lustre_disk.h"	/* for s2sbi */
> -#include "../include/lustre_eacl.h"
>  #include "../include/lustre_linkea.h"
>  
>  /* for struct cl_lock_descr and struct cl_io */
> diff --git a/drivers/staging/lustre/lustre/llite/xattr.c b/drivers/staging/lustre/lustre/llite/xattr.c
> index 421cc04..bcbc77e 100644
> --- a/drivers/staging/lustre/lustre/llite/xattr.c
> +++ b/drivers/staging/lustre/lustre/llite/xattr.c
> @@ -40,7 +40,6 @@
>  #include "../include/obd_support.h"
>  #include "../include/lustre_dlm.h"
>  #include "../include/lustre_ver.h"
> -#include "../include/lustre_eacl.h"
>  
>  #include "llite_internal.h"
>  
> -- 
> 2.7.4
> 
> 

