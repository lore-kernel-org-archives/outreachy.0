X-GM-THRID: 6338573496941019136
X-Received: by 10.200.55.21 with SMTP id o21mr6059131qtb.61.1476085750192;
        Mon, 10 Oct 2016 00:49:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.61.202 with SMTP id l68ls9734980otc.1.gmail; Mon, 10 Oct
 2016 00:49:09 -0700 (PDT)
X-Received: by 10.31.148.197 with SMTP id w188mr8216111vkd.7.1476085749794;
        Mon, 10 Oct 2016 00:49:09 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.131])
        by gmr-mx.google.com with ESMTPS id h127si231884vkf.2.2016.10.10.00.49.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 10 Oct 2016 00:49:09 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.131;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([78.43.20.153]) by mrelayeu.kundenserver.de
 (mreue002) with ESMTPSA (Nemesis) id 0MZ5ZT-1bNrPe3oRv-00VdIn; Mon, 10 Oct
 2016 09:49:06 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Elise Lennion <elise.lennion@gmail.com>, aditya.shankar@microchip.com, ganesh.krishna@microchip.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH 4/4 v2] staging: wilc1000: Move externs from .c to .h files.
Date: Mon, 10 Oct 2016 09:49:03 +0200
Message-ID: <6790682.CNEdnVmS6f@wuerfel>
User-Agent: KMail/5.1.3 (Linux/4.4.0-34-generic; KDE/5.18.0; x86_64; ; )
In-Reply-To: <20161008175851.GA16792@lennorien.com>
References: <20161008175851.GA16792@lennorien.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:+b5JEIyMNMh7iESjMQs8PCQgt/4vkZtiOevSltKkdIdZ8wzxgWu
 oYlc75Sw4+i3GMDEBx7JxFIKr9VFBGtJsOsF2zb4yA1QJdNyYDng94UIZdAD5IOMspN+THQ
 tRF4HRyP2IGoMrPK4g7/qmaK9W8peOXB2iDdV7H3Wz78gme2G0zhy7B6NcxuuO1Udvqow7j
 2wYgjpADjLTAy2lZ/SRhw==
X-UI-Out-Filterresults: notjunk:1;V01:K0:rMXIneOFYFE=:JaIvo7aUhJ5nC0TW9vwRSy
 nLR8oln773+Qu0cVhKxq1dlL3CPeA1LVfRE7Ee0EtXKquKZ1E0asdeM0V9aFPvWWKlvitTxAK
 24QVxZsR+MT120cGiz5mCMQBr91MokaGX6/yI2QxUV3QdmKdKiNtWjnJdDqi7POxfdLXFPk+v
 otOlIbFsPQRVkIepjXYC/6k4XlnE1/Nii5T+jR3zNHVBHSlJVdWXfKGhsZ9XAAw+sjhcQnwU1
 OaolYKOdvlGb2bvVl0OpZM7BBXwy/uq/KCekQIrkwCLtfi+Cnvd2SnYptgBDBtWgviwZ3EV7V
 0piQDPhK4sXWhDHL0Olv2agYaRWQ4irIw743nXor5qDFL4ByGBTyTqN1ibvlNAc1j5iSF2PeQ
 venhjq3ZmPKp+10Qfgjd9NaVtT9Azk6m6/Dt6iJkjn4a25X/AlWPQd2GPStqQsDGDAVTvfOzL
 E9EPBCGm9CpQQuo3J3Ff0tB/+cY0rYa+zNI6m3VmZ7svWrn5svF4ve4YxpUIbhY8PDWsh2A5I
 PZSG8qwwWL7m2B4PETnCD6u3C8tRRJQCTJwy0VmA/TOU+783qC/sr7iaDTA1HAZSe0O9Ug37F
 WQooAPh2qshY+WpbAQgHZxK/AkFkjoF4dbyth1R26XrmMhegJTKMD84SwLlZfi52eDsTuV5Ef
 Cl9wSewsl/4Qol2jmEQm+C+q47IWocDrKoKPGNADQl+hukJOFCQibTfBqYHprSlg/QreNA/ED
 fcyPS7D5j2xUqOaz

On Saturday, October 8, 2016 2:58:51 PM CEST Elise Lennion wrote:
> Fix checkpatch warning:
> 
> WARNING: externs should be avoided in .c files
> 
> The externs were removed because there are already declarations in wilc_wlan.h for them.
> 
> Signed-off-by: Elise Lennion <elise.lennion@gmail.com>

Acked-by: Arnd Bergmann <arnd@arndb.de>

