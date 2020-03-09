X-GM-THRID: 6802140913724293120
X-Received: by 2002:a62:5296:: with SMTP id g144mr16867529pfb.29.1583755092625;
        Mon, 09 Mar 2020 04:58:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:e795:: with SMTP id iz21ls4722465pjb.2.gmail; Mon,
 09 Mar 2020 04:58:11 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vu9VhfQrWhF2Cy64HNer32N++D2+2YgG+9YoeoeqVV5jdpFso1mxV29dPWBwRQ7okkgGPff
X-Received: by 2002:a17:902:b617:: with SMTP id b23mr15997866pls.285.1583755091079;
        Mon, 09 Mar 2020 04:58:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583755091; cv=none;
        d=google.com; s=arc-20160816;
        b=S2o9eJtJFBNgM2CcK4uMHLIVEw0F2VWsS8Mc74PAnB5cil5Ori3+29wPPA0jchqHxj
         ivxMyPDRkLJnDUXnAdH+IsWTre360RBNgaUlw6t67kcQwJK/ElDVDEoA+rwBUr+3gj4v
         K7hfBTTLfDiXjjcEY8tJ/f++gkXIwlp+Pl4G0DvHJRBZz3NZ2rcPLoWCz0jriSNSmECQ
         LFuzVVAUayIMdP8PIbXytqvD0/7ukLFNFhQjZm2RNqnsHzdvPunMevAqzXPlHpYG4xR0
         EMAv96FIIkW4JUcAZg+6cjDSUnAsu/XegFFYl9Zp4F+knAjd//uaIFe/JiCG7vDumEXl
         xhpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=7MoQnR8dEQ6Tn/CPQJv6gP0xisQJFPBsJyfHOK4ktMA=;
        b=W1YStCB1GwNO1K/hZaK7uMWe5Ca0ngN3TMPuZ8Zw3HRWyXXnqn9aDVaeT2RU2n76SN
         1xpHMUnxI4n2kokAoCjMAEXfs/1dfG/Wf7c1/OC8mJWh08cmL5KAnZxmrwV46RZaJntW
         5g19kxaC1ncLqIR9vzaynRcA3eMS1JxmkUBw69+JwZ1kkOpJ8Eda402XPi62UBYoHeds
         KM/TsRo0Qxl1lyFsG1/XTX+8B8YmUfR8+by8NyIWmA1EYamuz9wIXyXlnPO0hmLU4CRx
         pqOlPdGeLm9IJOhPSS+2XcAwy4tXd5H411J1lLycwkK01RYp6niFiAj5oVwcahWqhd0V
         qtZQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Bzy9H7+m;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com. [205.139.110.61])
        by gmr-mx.google.com with ESMTPS id e2si490366pjp.1.2020.03.09.04.58.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Mar 2020 04:58:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.61 as permitted sender) client-ip=205.139.110.61;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Bzy9H7+m;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1583755090;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=7MoQnR8dEQ6Tn/CPQJv6gP0xisQJFPBsJyfHOK4ktMA=;
	b=Bzy9H7+mMyBaMRG4Xcpmm9SmuNRmZCrGX4pkFugTdjGVQc/IkdkmXfj5NUQ34YtVyZtozt
	yQP9L3/C1S9YqveaTHpyDyQ0x3j/zcDvHKtitidGFUN04HXmBmhcJK46x6PsRmTo4mu3We
	pr3KD1iuVvy0Scd91RNmbYleLQpTcO0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-452-_TBmKFFuNLKLGssriTnFWg-1; Mon, 09 Mar 2020 07:58:06 -0400
X-MC-Unique: _TBmKFFuNLKLGssriTnFWg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 42EAA801F77;
	Mon,  9 Mar 2020 11:58:05 +0000 (UTC)
Received: from elisabeth (ovpn-200-26.brq.redhat.com [10.40.200.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 29A15907FC;
	Mon,  9 Mar 2020 11:58:02 +0000 (UTC)
Date: Mon, 9 Mar 2020 12:57:57 +0100
From: Stefano Brivio <sbrivio@redhat.com>
To: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
Cc: manishc@marvell.com, GR-Linux-NIC-Dev@marvell.com,
 gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] [Outreachy kernel] staging: qlge: remove blank line
Message-ID: <20200309125757.6e2cba34@elisabeth>
In-Reply-To: <20200309094036.3957-1-payalskshirsagar1234@gmail.com>
References: <20200309094036.3957-1-payalskshirsagar1234@gmail.com>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Mon,  9 Mar 2020 15:10:36 +0530
Payal Kshirsagar <payalskshirsagar1234@gmail.com> wrote:

> Remove unnecessary multiple blank lines.
> 
> Signed-off-by: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
> ---
>  drivers/staging/qlge/qlge_dbg.c | 4 ----
>  1 file changed, 4 deletions(-)
> 
> diff --git a/drivers/staging/qlge/qlge_dbg.c b/drivers/staging/qlge/qlge_dbg.c
> index 44fb3a317b8d..670361873d1d 100644
> --- a/drivers/staging/qlge/qlge_dbg.c
> +++ b/drivers/staging/qlge/qlge_dbg.c
> @@ -552,7 +552,6 @@ static int ql_get_probe_dump(struct ql_adapter *qdev, unsigned int *buf)
>  	buf = ql_get_probe(qdev, PRB_MX_ADDR_FC_CLOCK,
>  			   PRB_MX_ADDR_VALID_FC_MOD, buf);
>  	return 0;
> -
>  }
>  
>  /* Read out the routing index registers */
> @@ -610,7 +609,6 @@ static void ql_get_mac_protocol_registers(struct ql_adapter *qdev, u32 *buf)
>  
>  	for (type = 0; type < MAC_ADDR_TYPE_COUNT; type++) {
>  		switch (type) {
> -
>  		case 0: /* CAM */
>  			initial_val |= MAC_ADDR_ADR;
>  			max_index = MAC_ADDR_MAX_CAM_ENTRIES;
> @@ -1204,7 +1202,6 @@ int ql_core_dump(struct ql_adapter *qdev, struct ql_mpi_coredump *mpi_coredump)
>  err:
>  	ql_sem_unlock(qdev, SEM_PROC_REG_MASK); /* does flush too */
>  	return status;
> -
>  }
>  
>  static void ql_get_core_dump(struct ql_adapter *qdev)
> @@ -1838,7 +1835,6 @@ void ql_dump_tx_desc(struct tx_buf_desc *tbd)
>  	pr_err("tbd->flags = %s %s\n",
>  	       tbd->len & TX_DESC_C ? "C" : ".",
>  	       tbd->len & TX_DESC_E ? "E" : ".");
> -
>  }
>  
>  void ql_dump_ob_mac_iocb(struct ob_mac_iocb_req *ob_mac_iocb)

You should update the commit title to reflect the fact you're removing
multiple excess newlines. For my taste, that doesn't warrant a re-send,
though.

Reviewed-by: Stefano Brivio <sbrivio@redhat.com>

-- 
Stefano


