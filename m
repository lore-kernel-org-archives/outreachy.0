X-GM-THRID: 6212178129179377664
X-Received: by 10.28.216.206 with SMTP id p197mr4048868wmg.3.1446594232297;
        Tue, 03 Nov 2015 15:43:52 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.169.3 with SMTP id s3ls79132lfe.87.gmail; Tue, 03 Nov 2015
 15:43:51 -0800 (PST)
X-Received: by 10.112.181.194 with SMTP id dy2mr4879432lbc.11.1446594231706;
        Tue, 03 Nov 2015 15:43:51 -0800 (PST)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.131])
        by gmr-mx.google.com with ESMTPS id m135si552wmb.0.2015.11.03.15.43.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Nov 2015 15:43:51 -0800 (PST)
Received-SPF: neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.131;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([134.3.118.24]) by mrelayeu.kundenserver.de
 (mreue001) with ESMTPSA (Nemesis) id 0MQZS8-1a1Qks2TKm-00TjW2; Wed, 04 Nov
 2015 00:43:50 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: y2038@lists.linaro.org
Cc: Amitoj Kaur Chawla <amitoj1606@gmail.com>, outreachy-kernel@googlegroups.com
Subject: Re: [Y2038] [PATCH] scsi: bfa: Remove struct timeval
Date: Wed, 04 Nov 2015 00:43:49 +0100
Message-ID: <5910087.jVgJraTBut@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <20151101134346.GA8108@amitoj-Inspiron-3542>
References: <20151101134346.GA8108@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:q0LSnzJ1bjLcIt2kdOyoiQ6Ipf2waMKo9j7HIv2tpN1ZPZFoviV
 Q0VVSwjAcxIoDyW7hS+BugD5m4lmTmtQaPvwSbJ1mu2231gjgGr8iEgh5DX65kanF+HZ1cN
 G9K2qZBfIzPfbgz0SLr+mhu5JYKyh0XZ1OetxzWU8gBHgc590TeC+ipK4Ti556x7e/Elgpf
 uGZdf8KLsViqDGKmsc+zg==
X-UI-Out-Filterresults: notjunk:1;V01:K0:s+Tyrum4mIE=:FWyu3Q0WFiWfdPV91Pp87s
 1B+STu6wI/GUgj9VtwjJbrWZ9U/Nb+ajTgaOckh+8jq1Y2nHl0Vq1PVyGrF9F+aZeDJueHLRu
 cWZwHoyz0tRSMI42ISt+11Ksgypo944qoox7CXtym4AK2663u5iSDZpYkM7kR0v3Tcv4VtI6I
 rW8qcJ9QpfnsaFQMheIjEmnE/i7EQp6Bg4IA+363uJ3z33uyEEA+u7ALNp71rZ32ZY5U+Mfyw
 UutqBsfao249vRQWeDVA0hoBBZvzhTD226EKku9jYW4Ff9y9qv+RrbzKLARKdIBJmLfae0Nyy
 XxlXh8W/NHhx0Y7VMJjKNPcMtQx0YpB9UZcrDV5zm92wR4GXltyA9mkqKFfayDXOjvU9565WC
 f0A0TLn9fpeoziwt03LS1gGIBEK1GWGsPNEsFcIXeNjlIEoijZreKylbShooBi0R3VTHX/4+E
 h3nI/QZgAQFnxMuRIv8yfPiWHJGCsnMh8Du9VZp/Xch8z/fpUv8TSXpKseGq68nSF2z8/afB9
 lmAJVmQUTcWWgcczw/u5us3LrFCkXXVgSscPugTKR4T1YwJwBemlQ+OkDqaUNx1X61xVdoDu/
 F0S6tP3+og/nusadwQAJZpkliIOcLmf8lkZB8aSSREy9pDDoHu5R/VyeyxejK3eka0Low1ays
 0mkCUiq784K1pWfftT250FK5SNjsH7gnj8zBdWQp5gLZmiC/34f4iU8LhAiJd/PLiupNsUhr7
 tER/h5njR9+4T0tm

On Sunday 01 November 2015 19:13:46 Amitoj Kaur Chawla wrote:
> 32 bit systems using 'struct timeval' will break in the year 2038, so
> we modify the code appropriately.
> 
> This patch replaces the use of struct timeval and do_gettimeofday()
> with ktime_get_real_seconds() which returns a 64 bit seconds value.
> 
> This patch also replaces u32 timestamp with u64 timestamp in
> bfi_ioc_ctrl_req_s structure to store the 64 bit seconds value
> returned by ktime_get_real_seconds()
> 
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> ---

This one is also wrong, but for other reasons as the earlier
patches:

> @@ -1808,13 +1809,11 @@ static void
>  bfa_ioc_send_enable(struct bfa_ioc_s *ioc)
>  {
>  	struct bfi_ioc_ctrl_req_s enable_req;
> -	struct timeval tv;
>  
>  	bfi_h2i_set(enable_req.mh, BFI_MC_IOC, BFI_IOC_H2I_ENABLE_REQ,
>  		    bfa_ioc_portid(ioc));
>  	enable_req.clscode = cpu_to_be16(ioc->clscode);
> -	do_gettimeofday(&tv);
> -	enable_req.tv_sec = be32_to_cpu(tv.tv_sec);
> +	enable_req.tv_sec = be64_to_cpu(ktime_get_real_seconds());
>  	bfa_ioc_mbox_send(ioc, &enable_req, sizeof(struct bfi_ioc_ctrl_req_s));
>  }
>  
> diff --git a/drivers/scsi/bfa/bfi.h b/drivers/scsi/bfa/bfi.h
> index 9ef91f9..aaa68bc 100644
> --- a/drivers/scsi/bfa/bfi.h
> +++ b/drivers/scsi/bfa/bfi.h
> @@ -454,7 +454,7 @@ struct bfi_ioc_ctrl_req_s {
>  	struct bfi_mhdr_s	mh;
>  	u16			clscode;
>  	u16			rsvd;
> -	u32		tv_sec;
> +	u64			tv_sec;
>  };
>  #define bfi_ioc_enable_req_t struct bfi_ioc_ctrl_req_s;
>  #define bfi_ioc_disable_req_t struct bfi_ioc_ctrl_req_s;

Here, you are dealing with firmware data structure, so that gets interpreted
by code running on the SCSI host, and changing the structure layout breaks
the interface.

I would add a comment here that describes how and when the time will still
overflow, and add a cast to (u32). Please also describe this in the
patch description.

You really don't need to list every single change you do in the changelog,
but instead should describe what problems are with the original code and
why your change is done this way.

	Arnd

