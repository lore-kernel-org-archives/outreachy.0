X-GM-THRID: 6808150898800328704
X-Received: by 2002:a63:5ec6:: with SMTP id s189mr11004064pgb.374.1585530214531;
        Sun, 29 Mar 2020 18:03:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:9308:: with SMTP id p8ls13875722pjo.0.gmail; Sun, 29
 Mar 2020 18:03:33 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvV6iMJ3dBh5VqSt1F0seFRxMIwDtHUfsUuIKQEzonC0YhU+e+ngLJA9gE1pmJ9JJ4ZiW33
X-Received: by 2002:a17:902:a70b:: with SMTP id w11mr10863781plq.59.1585530213141;
        Sun, 29 Mar 2020 18:03:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585530213; cv=none;
        d=google.com; s=arc-20160816;
        b=JHG5gon7wfbHMVyEK/8fU48tpPKTsIpac1/zoRoZH+nc3bzdsODd12zc52Irv3Aswj
         A2GOIPVmBfpFsukQZtmqb8bz0d/HatzHPHThx/fgSpxFJUT4MvxP5dGLwHHh0Jj0jL9m
         +y9a7UyewYp43AlVsUHizew/W80yO82Yz+rhyPxgwdcaAwQekLy0X8MQyZYY/J364n2W
         exvIQaPwHxdxK7VTx3xZmAcx4cXaIZ/Iay5KuoKmOuFmWLTIK4SQe6eyw4Fw3vcQPt1j
         ZrovTUQ+tgxBeEGmnDGh23heeNASgw0MTctiZ7zKN6jz+j/ekJVFKVkWw3JYhh1GuDgI
         +mIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=IhDQmK8knMvx7axTYBvMjdkY5zqMjvS+uVG/7sLvC9M=;
        b=00A0thGU+liepuFneefJDbHxzW2oaqGUsXHG3HB8tAj2Ms/WaCVZ1cQtYV5CN7vXO5
         oHV3RyiYzybWj9JwO2IYtvpEXXSip9sM+XiNlSpYjigYo7ZgDTPyAK/IFDdRB96LPaHh
         LkNa+OvFhC+xAVu4mog4SlSmvfi0p/jtWQ9/8EBKy3uSJLFfoG8MVnMevMmLDhmnFIEQ
         jRhXGzJkb2N951JD0tTJWi/FnhJh5UpNOMM7H4JRVLQLu+3LvOkA6WSSQLlllLfJdF9f
         J1h8PC3aDb12qYGFrXjjnsJ3ex/3SaCLF+RcuDKwEsFxzAM+BAY4dsoRC+mjdWr5jBZL
         gcPw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=FJyOfr2G;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com. [63.128.21.74])
        by gmr-mx.google.com with ESMTPS id ne6si1005027pjb.1.2020.03.29.18.03.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 29 Mar 2020 18:03:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) client-ip=63.128.21.74;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=FJyOfr2G;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1585530212;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=IhDQmK8knMvx7axTYBvMjdkY5zqMjvS+uVG/7sLvC9M=;
	b=FJyOfr2GFua9JOBHIX3jljJndI+P0iju4bCmd1hVBzYrrJeNJM4NKX4EpE2HYJr27YAhKT
	5jBnOJkGwhcxREKpOuPkrvbpOG2V7D1y/PVCESaE8kBJ1yx4Z8hqDSRErHVH2Bojr1e9YU
	qcT/26Z03nmVLwiUMOw4j4rQQJF2B/s=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-196-XgmSHP17MXGpFKZV1LnHWQ-1; Sun, 29 Mar 2020 21:03:30 -0400
X-MC-Unique: XgmSHP17MXGpFKZV1LnHWQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1E9AB1005509;
	Mon, 30 Mar 2020 01:03:29 +0000 (UTC)
Received: from elisabeth (unknown [10.40.208.4])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1609660BEC;
	Mon, 30 Mar 2020 01:03:26 +0000 (UTC)
Date: Mon, 30 Mar 2020 03:03:21 +0200
From: Stefano Brivio <sbrivio@redhat.com>
To: Simran Singhal <singhalsimran0@gmail.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, outreachy-kernel
 <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8723bs: Remove multiple
 assignments
Message-ID: <20200330030321.73bab680@elisabeth>
In-Reply-To: <20200325142226.GA14711@simran-Inspiron-5558>
References: <20200325142226.GA14711@simran-Inspiron-5558>
Organization: Red Hat
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12

On Wed, 25 Mar 2020 19:52:26 +0530
Simran Singhal <singhalsimran0@gmail.com> wrote:

> Remove multiple assignments by factorizing them.
> Problem found using checkpatch.pl:-
> CHECK: multiple assignments should be avoided
> 
> Signed-off-by: Simran Singhal <singhalsimran0@gmail.com>
> ---
>  drivers/staging/rtl8723bs/core/rtw_cmd.c | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
> index 61a9bf61b976..744b40dd4cf0 100644
> --- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
> +++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
> @@ -194,7 +194,9 @@ int rtw_init_cmd_priv(struct	cmd_priv *pcmdpriv)
>  
>  	pcmdpriv->rsp_buf = pcmdpriv->rsp_allocated_buf  +  4 - ((SIZE_PTR)(pcmdpriv->rsp_allocated_buf) & 3);
>  
> -	pcmdpriv->cmd_issued_cnt = pcmdpriv->cmd_done_cnt = pcmdpriv->rsp_cnt = 0;
> +	pcmdpriv->cmd_issued_cnt = 0;
> +	pcmdpriv->cmd_done_cnt = 0;
> +	pcmdpriv->rsp_cnt = 0;

I think this is better than the original because the original exceeds
80 columns (and looks horrible in general). But the second hunk:

>  
>  	mutex_init(&pcmdpriv->sctx_mutex);
>  exit:
> @@ -2138,7 +2140,8 @@ void rtw_setassocsta_cmdrsp_callback(struct adapter *padapter,  struct cmd_obj *
>  		goto exit;
>  	}
>  
> -	psta->aid = psta->mac_id = passocsta_rsp->cam_id;
> +	psta->aid = passocsta_rsp->cam_id;
> +	psta->mac_id = passocsta_rsp->cam_id;

I would leave this alone, because psta->aid is really the same thing
here, it's not just a value that happens to be assigned to both by
accident.

-- 
Stefano


