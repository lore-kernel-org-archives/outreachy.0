X-GM-THRID: 6801966173715955712
X-Received: by 2002:a05:6830:22eb:: with SMTP id t11mr3248053otc.9.1583754820922;
        Mon, 09 Mar 2020 04:53:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:787:: with SMTP id 7ls538819oto.3.gmail; Mon, 09 Mar
 2020 04:53:40 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtDL7pXT0hZoyvq19sRM9MYwOLmvdEloRy2t1uiJBapGGxc9GKcR6tWd73/RjbsShmxU68A
X-Received: by 2002:a9d:554c:: with SMTP id h12mr13181953oti.16.1583754819996;
        Mon, 09 Mar 2020 04:53:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583754819; cv=none;
        d=google.com; s=arc-20160816;
        b=0/WVjU/Kw2HMcH4wqukX3zIm2xGmOxTyMkpQJ0jzGYmKPrQdG6jpB6o3v/QgxX5XFT
         A/hp+IAAwPimueIssSSUAi17rZ/a4x+S4e19lj6VUvlbZdZ3efyzqzopBxkW+dQabN96
         TO/8VhtLf+tVXc/4PuNtDQ/VqLYgkiODFEkc/8EO8LI5oAt95Rg9gdqEIMWFlE403cTI
         opYpVdMEE+zszvEkOhnEFZzTyqjl2r0VXXeD9kzEKDohCStupz08rkAh5Ph5CWvn7IT6
         nKyHo41y9Vckjqa/oam3s7nh2j2LfDF/FaCqP28pB66LS1a3adzTmtlT9hCtxZmOG1Mn
         +TzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=vZqdxqr5dYHPDt44iOURmodzla80igU9dgMyGu8Ijq8=;
        b=ZhREN8b1TnLMyFmbTWjPol/5pk9DkMhEo4Ioy1WW22GzTWrS3vlmndtK91Au/r5XhK
         Mn6QkfDH6SvcU+vEPrNRuD2r3L/Y/X/c0pPzrJLzG3NLl5iJfOBZ8wmhQdr4C8kPJjio
         RJLfu3j3zxidx+uV0E+r7lwsDj2GrZp3PtUrkPX7tFwyyHAtHcFeKKggPX2jD7FUj993
         0Hbu0zRj+bkZ2C15KLBNzBJBTXnffVtQYqEMVvMS0yUD0RKjJfTSv3eoQdnGUfZR6Hh1
         y18g7i0HiMh4YyUpRqUe0nx6lGsXQMFXkR0CWWuHs01oTIVvvHOnSYyfS3qIMYQ1bRN+
         aBAg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=WIhVuCWL;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com. [207.211.31.81])
        by gmr-mx.google.com with ESMTPS id z203si280903oia.0.2020.03.09.04.53.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Mar 2020 04:53:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.81 as permitted sender) client-ip=207.211.31.81;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=WIhVuCWL;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1583754819;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=vZqdxqr5dYHPDt44iOURmodzla80igU9dgMyGu8Ijq8=;
	b=WIhVuCWLkT0WckCW/Nt0d/DmmGfaOwdJXSN8jn2bNUJrv9i643XaQwNfLraeG+gdV5MkmJ
	pNJ2jjcWc1w0CJEBie7DhWvOhZtu+kJgiFP+cMkVZqMU4NufA//UZ5Aa/vF0M6FIzy0F+k
	x64YJIZM547wkFpWg3HmaS9NtwbuadA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-485-DosMGLPtMFihXhRiyICzIA-1; Mon, 09 Mar 2020 07:53:35 -0400
X-MC-Unique: DosMGLPtMFihXhRiyICzIA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 36983800D50;
	Mon,  9 Mar 2020 11:53:34 +0000 (UTC)
Received: from elisabeth (ovpn-200-26.brq.redhat.com [10.40.200.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AE71F386;
	Mon,  9 Mar 2020 11:53:32 +0000 (UTC)
Date: Mon, 9 Mar 2020 12:53:27 +0100
From: Stefano Brivio <sbrivio@redhat.com>
To: Lourdes Pedrajas <lu@pplo.net>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] staging: greybus: remove commented
 out function
Message-ID: <20200309125327.422a1807@elisabeth>
In-Reply-To: <20200308222218.16031-1-lu@pplo.net>
References: <20200308222218.16031-1-lu@pplo.net>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Sun,  8 Mar 2020 23:22:18 +0100
Lourdes Pedrajas <lu@pplo.net> wrote:

> Remove function gb_i2c_smbus_xfer() which is unused.
> 
> Signed-off-by: Lourdes Pedrajas <lu@pplo.net>
> ---
>  drivers/staging/greybus/i2c.c | 14 --------------
>  1 file changed, 14 deletions(-)
> 
> diff --git a/drivers/staging/greybus/i2c.c b/drivers/staging/greybus/i2c.c
> index ab06fc3b9e7e..c48fa1de89b0 100644
> --- a/drivers/staging/greybus/i2c.c
> +++ b/drivers/staging/greybus/i2c.c
> @@ -215,20 +215,6 @@ static int gb_i2c_master_xfer(struct i2c_adapter *adap, struct i2c_msg *msgs,
>  	return gb_i2c_transfer_operation(gb_i2c_dev, msgs, msg_count);
>  }
>  
> -#if 0
> -/* Later */
> -static int gb_i2c_smbus_xfer(struct i2c_adapter *adap,
> -			     u16 addr, unsigned short flags, char read_write,
> -			     u8 command, int size, union i2c_smbus_data *data)
> -{
> -	struct gb_i2c_device *gb_i2c_dev;
> -
> -	gb_i2c_dev = i2c_get_adapdata(adap);
> -
> -	return 0;
> -}
> -#endif
> -
>  static u32 gb_i2c_functionality(struct i2c_adapter *adap)
>  {
>  	struct gb_i2c_device *gb_i2c_dev = i2c_get_adapdata(adap);

In case of doubt, this function isn't even a draft, and nobody
implemented it in six years, touched last time by commit
ed8800dc376e ("greybus: add i2c driver"). Change looks good to me.

However, you should at least Cc: the maintainers returned by
get_maintainer.pl.

-- 
Stefano


