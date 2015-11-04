X-GM-THRID: 6210130290572001280
X-Received: by 10.112.184.170 with SMTP id ev10mr928086lbc.4.1446681034847;
        Wed, 04 Nov 2015 15:50:34 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.21.78 with SMTP id 75ls1391wmv.39.canary; Wed, 04 Nov 2015
 15:50:34 -0800 (PST)
X-Received: by 10.28.138.83 with SMTP id m80mr5222161wmd.7.1446681034403;
        Wed, 04 Nov 2015 15:50:34 -0800 (PST)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.130])
        by gmr-mx.google.com with ESMTPS id t2si202142wme.1.2015.11.04.15.50.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Nov 2015 15:50:34 -0800 (PST)
Received-SPF: neutral (google.com: 212.227.126.130 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.130;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.130 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([134.3.118.24]) by mrelayeu.kundenserver.de
 (mreue003) with ESMTPSA (Nemesis) id 0MGmEX-1ZhDXF1rUX-00Dash; Thu, 05 Nov
 2015 00:50:32 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: y2038@lists.linaro.org
Cc: Deepa Dinamani <deepa.kernel@gmail.com>, gregkh@linuxfoundation.org, linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Y2038] [PATCH] usb: misc: usbtest: Remove timeval usage
Date: Thu, 05 Nov 2015 00:50:31 +0100
Message-ID: <6462540.z8br1dO3uJ@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <1446679751-20876-1-git-send-email-deepa.kernel@gmail.com>
References: <1446679751-20876-1-git-send-email-deepa.kernel@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:DtF5BWS/zwVheRjfg1myK3fWuVzg06mavA7E1SRa5ujwYsBqutu
 RKRJKXCnyBxR2dGvAIzdz9786a5Z4TMUhbV5RNWY+ZLxt0BMoOoMf3p7wtwPLPlxVjkoiHS
 ZOvhf3nTGL+h451azwj8txhePn8o0Pwp6lVUuXAAQh1VLoNH8hTdLy0AiEVO32TIfHQ8lVZ
 Q7u3UmBHn3qE2mAyjMcLg==
X-UI-Out-Filterresults: notjunk:1;V01:K0:ScQFuU3hB4k=:vFC8LGYsuvn3jB2adeuJc8
 SxTeJj1ztWlkqcx2yn7vc87I6U9nKXlQGNiTe+Eqlm1nBfwPc4EOcgl5lFQfvgKw/IttAgsvE
 2qenfq2Wen4rbFFcfnRUXoN9oEpPobxKPCseuMRUCTMsrji1bf4Mlul6HIDiGNy7x52RFu7dR
 0ybj+AZoyhjSwDC9UqO0wyg5lnS/G9ZIRjfx8E4WfflWyALqW8MAaY8V7cyPOAxvx+cg/zFTA
 rtKVHZy7PVbKE/rh0fk9sVetvmwbctqtRmaUaNo3BWy3z/kPb5GIoL2eYuDkqr7BBCyzBcyWV
 m4onUVaAeqORnLP7obGL4hfPAElDmTAhGfgsLM493TM2R4G/r44/jWIflXoeTJKV2cDyLFnK/
 BkSd7Gf08IO56wPLO1Qo4n7kotyjMya8ih1bOvT+itD0ZGKZxjsRgoWzJBoMiBnisAVZDt43D
 nHM8r1EIx3VzeVb8QwBFz+6g/v81bQnHJjLMXi2YeHyDqWcJL44W23Un5IBo4VcJGLokEw52Q
 7fcZR/m2Cts7Q7RQ7O9N44VFwtps6WqdEm1AZYo0HJLHj1yBLxfkpfKMCDL5ku7nSdhQG4DWo
 zZyL5C6zPUgt+JcwFtO8D+GdEPFsgKy97OTp/0KzXMumK9LkSBIStdx5mN7h+HB9QLC5aiYCi
 9bGLSZp0KqdWSSqbzmI1SDlOHFn0zkdkc5EdNtSZp0RlkhLn5tQfdm3HsPk5cPL3iwggZ/HO5
 riGYeZ3MHoea8JFz

On Wednesday 04 November 2015 15:29:11 Deepa Dinamani wrote:
> timeval is deprecated and not y2038 safe.  Its size also changes according
> to 32 bit/ 64 bit compilation.  Replace it with 32 and 64 bit versions of
> its individual fields, giving two ioctls with different code values.
> The two ioctls are necessary to maintain the 32 bit and 64 bit userspace
> compatibility with a 64/32 bit kernel.
> 
> Change unsigned to __u32 types for a definitive userspace interface.
> This is in accordance with the psABI that the unsigned type is always
> 32 bits.
> 
> Also use motonic timer instead of real time to ensure positive delta
> values.
> 
> Refactor usbtest_ioctl for readability to isolate the handling of the
> testing timing measurement.
> 
> The official testusb userspace tool can be changed in a separate patch
> to reflect the __u32 changes as well. It can use the usbtest_param_32
> struct, since 32 bit seconds is long enough for test durations.
> 
> Signed-off-by: Deepa Dinamani <deepa.kernel@gmail.com>
> 

Reviewed-by: Arnd Bergmann <arnd@arndb.de>

