X-GM-THRID: 6392026082663464960
X-Received: by 10.46.33.163 with SMTP id h35mr90934lji.17.1488265566877;
        Mon, 27 Feb 2017 23:06:06 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.129.139 with SMTP id c133ls87742wmd.5.gmail; Mon, 27 Feb
 2017 23:06:06 -0800 (PST)
X-Received: by 10.223.143.114 with SMTP id p105mr17428wrb.17.1488265566071;
        Mon, 27 Feb 2017 23:06:06 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id h198si92142wmg.1.2017.02.27.23.06.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Feb 2017 23:06:06 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,218,1484002800"; 
   d="scan'208";a="214947689"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 28 Feb 2017 08:06:05 +0100
Date: Tue, 28 Feb 2017 08:06:04 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Gargi Sharma <gs051095@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, 
    oleg.drokin@intel.com, andreas.dilger@intel.com, jsimmons@infradead.org
Subject: Re: [Outreachy kernel] [PATCH v2] staging: lustre: Replace typedef
 with struct
In-Reply-To: <1488265307-24641-1-git-send-email-gs051095@gmail.com>
Message-ID: <alpine.DEB.2.20.1702280805150.2078@hadrien>
References: <1488265307-24641-1-git-send-email-gs051095@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 28 Feb 2017, Gargi Sharma wrote:

> As per the Linux kernel coding style guidelines, using typedef for a
> structure type is not recommended. Hence, occurences of typedefs have
> been removed. To find the occurences of the structures grep was used
> and no uses were found.

Actually, I'm not sure to understand.  No uses of the structures were
found at all?  If so, they should just be dropped.  Or are there uses, but
they already have the word "struct" in front of them?

julia

>
> Coccinelle script:
>
> @r1@
> type T;
> @@
>
> typedef struct { ... } T;
>
> @script:python c1@
> T2;
> T << r1.T;
> @@
> coccinelle.T2=T;
>
> @@
> type r1.T;
> identifier c1.T2;
> @@
> -typedef
> struct
> + T2
> { ... }
> -T
> ;
>
> Signed-off-by: Gargi Sharma <gs051095@gmail.com>
> ---
> Changes in v2:
> 	- Improved the commit message.
> ---
>  drivers/staging/lustre/lustre/include/lustre_eacl.h | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/staging/lustre/lustre/include/lustre_eacl.h b/drivers/staging/lustre/lustre/include/lustre_eacl.h
> index 1e71a86..c198eda 100644
> --- a/drivers/staging/lustre/lustre/include/lustre_eacl.h
> +++ b/drivers/staging/lustre/lustre/include/lustre_eacl.h
> @@ -49,17 +49,17 @@
>  #include <linux/fs.h>
>  #include <linux/posix_acl_xattr.h>
>
> -typedef struct {
> +struct ext_acl_xattr_entry {
>  	__u16		   e_tag;
>  	__u16		   e_perm;
>  	__u32		   e_id;
>  	__u32		   e_stat;
> -} ext_acl_xattr_entry;
> +};
>
> -typedef struct {
> -	__u32		   a_count;
> -	ext_acl_xattr_entry     a_entries[0];
> -} ext_acl_xattr_header;
> +struct ext_acl_xattr_header {
> +	__u32 a_count;
> +	struct ext_acl_xattr_entry a_entries[0];
> +};
>
>  #define CFS_ACL_XATTR_SIZE(count, prefix) \
>  	(sizeof(prefix ## _header) + (count) * sizeof(prefix ## _entry))
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1488265307-24641-1-git-send-email-gs051095%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

