X-GM-THRID: 6211494140664872960
X-Received: by 10.112.142.195 with SMTP id ry3mr2123099lbb.22.1446233737627;
        Fri, 30 Oct 2015 12:35:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.18.198 with SMTP id 189ls204522wms.11.gmail; Fri, 30 Oct
 2015 12:35:37 -0700 (PDT)
X-Received: by 10.28.170.75 with SMTP id t72mr1049898wme.5.1446233737130;
        Fri, 30 Oct 2015 12:35:37 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.131])
        by gmr-mx.google.com with ESMTPS id t2si143046wme.1.2015.10.30.12.35.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Oct 2015 12:35:37 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.131;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([134.3.118.24]) by mrelayeu.kundenserver.de
 (mreue003) with ESMTPSA (Nemesis) id 0LjOHr-1aTmnn17hH-00dXeT; Fri, 30 Oct
 2015 20:35:36 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Amitoj Kaur Chawla <amitoj1606@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: lustre: llite: dir: Add __user annotations
Date: Fri, 30 Oct 2015 20:35:35 +0100
Message-ID: <3741911.Fn7QnqVu3M@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <20151030191214.GA15157@amitoj-Inspiron-3542>
References: <20151030191214.GA15157@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:TZB8P8Zvk3Ep+oSR0RkhgKfiSVZV1lNZZEWzxvdpaOfkhgxV1IR
 ZfNArLwaQrFT2ATkPYNUHn9mz75+cljd4UhbXu387ZxocoA02OBV/nNdGbD3/MUoMERCxCt
 LIKv9FWmCwIf2TLjbnT/kR9oMxi3J9tvUdodESvGqMJ/3W3O8NUZDIvVdgps1UnU/4z8sfL
 8VskfpnppuDa+5qFK86RA==
X-UI-Out-Filterresults: notjunk:1;V01:K0:CLnPD24SQKw=:YGYIogu0FT9eiqPI6LW4V0
 80sKvjjJpOsEoBsxxoFuE6Gx62eMQA7a9KGuJ4KESrBPadNeyTYR/dm89u433ZicAweg3NWUF
 9f2gAYD9D4hReeknZ++e4qb7qIxhZVJSyfpIq9J0c+LZD+IpovtUAwFEXS25i97fAREe9LO5p
 9I/rqkgyogESViBloQB8yyZSz+hUadMiaSwf3GNrrf9i2aqC4gUbUo0ywDfEyQhwamCyl1QiK
 fVN4IFuvqqs4UDwQPQbV0YTCv70USjhZm+lw1dyL1BfSdOBycPGoLxr75Ig5bUU2zUrNzSbnj
 WJ2gKIfmayXDbXXfPvlvWble0ADaY1o8pZzs+BEWwkdCggyJgTLGnTY5X6dD6zfP0RYZ8w0Pe
 t1Z5G8LkaDQyhfawEZighgPvbjsq5UiZ6BMwBmSV5WT6ebz2Ejt++6a0ocywbC3DpMk7pOhrx
 fGica+A56eTMUVlH74qnCjozXyxznZEzRIAi2DHl7O/PlzZ4QRJt8CETRF8NtEPnw62thfZQF
 cBsw9z4Mb2LLUfy9cC5RBv+lLhJxjvMLyMX2EDLNwEMx4H+wfKMfZDHmXbku2xApr402C0se9
 UrwqIkfv946F+XPh3ScZ/1gPDo00bh9JzDOTGvv1RatP2Q/5LMC8MMB/aMx3W7gggujCkKf7y
 P17Reu+X46eBCaUhibhOEsIYxgWiPJ+DE/Ks3Re1xvPUAIt2ny8GSZUc+6bkV/avzokAU8d7Y
 zYKtThm8P7LkzGQf

On Saturday 31 October 2015 00:42:14 Amitoj Kaur Chawla wrote:
>         case LL_IOC_LOV_SETSTRIPE: {
>                 struct lov_user_md_v3 lumv3;
>                 struct lov_user_md_v1 *lumv1 = (struct lov_user_md_v1 *)&lumv3;
> -               struct lov_user_md_v1 *lumv1p = (struct lov_user_md_v1 *)arg;
> -               struct lov_user_md_v3 *lumv3p = (struct lov_user_md_v3 *)arg;
> +               struct lov_user_md_v1 __user *lumv1p =
> +                                       (struct lov_user_md_v1 __user *)arg;
> +               struct lov_user_md_v3 __user *lumv3p =
> +                                       (struct lov_user_md_v3 __user *)arg;
>  
> 

A nicer way to do this is to only have a single cast at the start of the
function, like

	void __iomem *argp = (void __iomem *)arg;

and then using normal assignments from that to the specific structures.

	Arnd

