X-GM-THRID: 6201947249365221376
X-Received: by 10.182.196.71 with SMTP id ik7mr2934598obc.36.1444252739970;
        Wed, 07 Oct 2015 14:18:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.30.65 with SMTP id e62ls371078ioe.49.gmail; Wed, 07 Oct
 2015 14:18:59 -0700 (PDT)
X-Received: by 10.107.148.204 with SMTP id w195mr3387410iod.15.1444252739496;
        Wed, 07 Oct 2015 14:18:59 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.10])
        by gmr-mx.google.com with ESMTPS id zg1si5375993pbb.2.2015.10.07.14.18.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Oct 2015 14:18:59 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.17.10 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.10;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.10 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([149.172.15.242]) by mrelayeu.kundenserver.de
 (mreue103) with ESMTPSA (Nemesis) id 0MCfv0-1ZtK1t3C4I-009RsK; Wed, 07 Oct
 2015 23:18:55 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Shraddha Barke <shraddha.6596@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 0/5] Declare local functions as static
Date: Wed, 07 Oct 2015 23:18:55 +0200
Message-ID: <5182395.LaiSdLnjxc@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <1444248368-29504-1-git-send-email-shraddha.6596@gmail.com>
References: <1444248368-29504-1-git-send-email-shraddha.6596@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:hxXc/thQMgtmmtHHD/2ELQL/GyZFv8AnS07JRuMinK8lG8CHkjk
 8/L8f477ASToQ1NOMDWlnkFmN0CVv+bITGtyG96slJSfsgIvJS9MmRS+wumipuLafOKbn4Q
 Juu6Q7u4kUN2MVGLIr+AOIlMdmIVvoYW6DtFcEQz4H4KK0STi5T+dEd4WMDF/5rsMzCPNvY
 6lUBEg+Ii8TrhtbONAvfg==
X-UI-Out-Filterresults: notjunk:1;V01:K0:Q9XQBKUmwqs=:+RBULEDCU0Y3hqtMs2OHjG
 GjjoPG/xlIL7aiIEdOpynf1ByBqTDVQr9KGByktbEI6dzN8VQ0XNuDZTyQa0TeKu/Xxka7vBG
 pJIgV40LtTThdZGd9LxrMsH9/ilAHCYxqlt4I1083FnkWy4hF63Oh3G3ZXmgEm807zPiJtVS4
 B4KYuYhGaAhFTv1M9eTNPwmybO5Skv02B3zRQLlHrwu9cyBMuTVqybhAV++qMl8a+gLiNw4NL
 TQLoLtn4Dr+9ITbI0H3pJDBQ8LTNo6hSmiRQhlQvv7bu5+ls1m/MBQuYLsKcH7KHX/FIXumlT
 ReU+/11GXJKOnLAMvwrXZCoI3ggP5IMqPx2tN3B5eSxzWyYmJBvPrfhs2lSoADoALHKcdwoXl
 RGs9DjNT8z3M2NUiJD1MT35eTla0X1jU9fOdSdEdyaHuFHDukdEh6tmqkh49+1ICDN1l5/ply
 JBInxSUpPK9XaN1xGgdusBInj/aSULp8IKdPWM9gRQBOPdkssMHSc0dJb+5mvNLkOIO+j2vKy
 MwpDVXxkWMtOUEpFS/f//S2SJ7R6pm3H/tr9kbt7eblX+mAn7cbZ/ObRtAuGYR7L/6fEhVIZq
 0s0WHWq9UfdSCuqb9yvlP8OtTUk2+VGcBEOnCrvUdh4VMYeIf+ct12GBq0sqmJgbFlKb2Cgbf
 kV7YK0dEh5t02BcaePyeflLWGVDB/V8HS/tOx6hvliUrhGjB++wdtq0AjL3rK7Lx5OVH23hd/
 GGHnaIBOqWbOs7/k

On Thursday 08 October 2015 01:36:03 Shraddha Barke wrote:
> Declare functions as static since they are used only in a particular file. 
> 
> Shraddha Barke (5):
>   Staging: lustre: obdclass: llog_cat: Declare local functions as static
>   Staging: lustre: ptlrpc: pack_generic: Declare local functions as
>     static
>   Staging: lustre: ptlrpc: import: Declare deuuidify as static
>   Staging: lustre: ptlrpc: service: Declare local functions as static
>   Staging: lustre: obdclass: obdo: Declare iattr_from_obdo as static
> 

All five patches

Reviewed-by: Arnd Bergmann <arnd@arndb.de>

