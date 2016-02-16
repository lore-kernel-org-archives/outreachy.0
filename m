X-GM-THRID: 6251883453427482624
X-Received: by 10.194.62.69 with SMTP id w5mr1936151wjr.5.1455630320561;
        Tue, 16 Feb 2016 05:45:20 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.21.215 with SMTP id 84ls624601lfv.57.gmail; Tue, 16 Feb
 2016 05:45:19 -0800 (PST)
X-Received: by 10.112.135.234 with SMTP id pv10mr2518541lbb.24.1455630319916;
        Tue, 16 Feb 2016 05:45:19 -0800 (PST)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.130])
        by gmr-mx.google.com with ESMTPS id s141si1059005wmd.1.2016.02.16.05.45.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Feb 2016 05:45:19 -0800 (PST)
Received-SPF: neutral (google.com: 212.227.126.130 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.130;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.130 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([78.42.132.4]) by mrelayeu.kundenserver.de
 (mreue004) with ESMTPSA (Nemesis) id 0LmPYc-1Zw3wL0Zzm-00ZuCR; Tue, 16 Feb
 2016 14:45:19 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 2/4] Staging: wlan-ng: hfa384x.h: Remove function prototype
Date: Tue, 16 Feb 2016 14:45:18 +0100
Message-ID: <243521082.5Kxh4Qk5o6@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <126c2eb7a7fc3b9eb9a76f9a6dc17a8c666ebd9e.1455629651.git.bhumirks@gmail.com>
References: <cover.1455629651.git.bhumirks@gmail.com> <126c2eb7a7fc3b9eb9a76f9a6dc17a8c666ebd9e.1455629651.git.bhumirks@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:ooDk+1VPyMkTNWSdRZol+nLdG10KR97icYJa4VaaXkKhAiLO3yq
 V+4RvWMWQaIR/DdmkCKKTgTTtaNsFiyrL3VCVQSH+UwpG0ylos16RxYjzbqOEIG5T0T5lCG
 2EwrC4n0fQPDHxEUHVWLPeVZbqV5Uv4suFB3RGrmaC8Q/Ccd2JMIV03U+50PgHjUMK0SEgt
 Q4EfYnWKnu4Zdzbqoqyxw==
X-UI-Out-Filterresults: notjunk:1;V01:K0:gOC2zsKVMTc=:u9rx5WM8dEyz+s+yDvc7Qo
 rXGXPSysW4m9LqS68k0IWb5c0hxS3MlNHSr+nD96do0olkxeWIshonpEr60dXxAuIYXcGuaOJ
 eQYxj9N1KwLf4SxNWbw2wjZTWavJBFnIcDAkmwfC4TyjkXJAdEeuxVgc3ivxhtPzFO5EQnR73
 wTOUoVOFveuuDUOpMYoIx6KubJ4wqmSA2c7VvhQdcT7ex31PwB+Jbwh5R7epBy+u2Vo9spdqK
 R2qhl1pNVFQqx71aILDDcxJW8gQcKNCOptM5j17Eg6HRYhVjEJZzRIUONTH5wmPG36+WqKLtg
 bw5375VlnPfH4D0Wn1lA6uN+N85UNJgFTdj3x8LXR9OBeEa816PDTRUqhg2Wg+lbrO1qDhOTe
 mc2L0MkbCF5yi63HQLrANMZ7zo3RNfNw70Ygx4tTLK8x2vKF4HkX4zeMV7mOojX6ePuSlGv+J
 A7iGlZxYvR/tcmxTdTaDg532WZeAW4kCfEN7kr7BaSB3LoEPu86G0hxMDYXE5JzfSeBe7tmdE
 Xjkf+dPvLqdvie0grYxIykyiUQruO3qeteJAijtplUxYI4CKI+yxEWicXu95OAUP26O5EZIVI
 XQsbSbilYt//2mGRRQ+jNVagm/+DcjKZpGItVqJ+FfRvJCRxsTSt8PEY0BQtzG8DHWbbamrkF
 Hlzc/w6pM86Tt4eqxRoArcURUFvv5pVuKTwFy/Q2Yg9kbGwM37qPr3720/nSsqqYSBGvL1n2W
 rX3JN1xVxwr828er

On Tuesday 16 February 2016 19:10:33 Bhumika Goyal wrote:
> The prototype of function hfa384x_drvr_commtallies is no longer needed
> so remove it.
> 
> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
> ---
>  drivers/staging/wlan-ng/hfa384x.h | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/staging/wlan-ng/hfa384x.h b/drivers/staging/wlan-ng/hfa384x.h
> index 8dfe438..4fd3145 100644
> --- a/drivers/staging/wlan-ng/hfa384x.h
> +++ b/drivers/staging/wlan-ng/hfa384x.h
> @@ -1360,7 +1360,6 @@ void hfa384x_destroy(hfa384x_t *hw);
>  
>  int
>  hfa384x_corereset(hfa384x_t *hw, int holdtime, int settletime, int genesis);
> -int hfa384x_drvr_commtallies(hfa384x_t *hw);
>  int hfa384x_drvr_disable(hfa384x_t *hw, u16 macport);
>  int hfa384x_drvr_enable(hfa384x_t *hw, u16 macport);
>  int hfa384x_drvr_flashdl_enable(hfa384x_t *hw);

I'd use a single  patch to remove both the function and the prototype, otherwise
all four patches look good.

	Arnd

