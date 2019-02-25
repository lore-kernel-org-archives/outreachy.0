X-GM-THRID: 6661153650381946880
X-Received: by 2002:aca:58d6:: with SMTP id m205mr10552304oib.34.1551095444516;
        Mon, 25 Feb 2019 03:50:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6830:114f:: with SMTP id x15ls5514489otq.3.gmail; Mon,
 25 Feb 2019 03:50:43 -0800 (PST)
X-Google-Smtp-Source: AHgI3IZ9W9ORIjWq+dO4EaFqS5TlxvymgUvd2Ib91OODNTMZDKRg+uIXu4l/ZiGAwgOOCsY3p3ht
X-Received: by 2002:a9d:2c61:: with SMTP id f88mr10910013otb.68.1551095443267;
        Mon, 25 Feb 2019 03:50:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551095443; cv=none;
        d=google.com; s=arc-20160816;
        b=TD9Uc4AAbv9B0+XNMyGVShr74tOw7wDcwty3L052BrLC8pC4pbF7svZqKTqH8lcVzb
         YRckzpgcEk19rXMByC6QR7cxskI+RE+L19tWADuZLdYhXAcnxtDxig8tETv6DtVraw4B
         BqJfyoj3qqhpiS6L7MFkxtcmaAjY51geUww5w6laKAXje4wQr1pWrG4sRCsOHYamh+7y
         ltT7BkyFiyuVSU7t9Z3FHEa0NoRsaZ1mgew1ergxIpIKlYtgN4S2K7jl6rgri2VTbCfa
         uRQw0HzNItcXEPLzeOVMGJDCbCNHb1dHvPFSColj0cPBghmmSP1z0P3HhLIMfbT7WITp
         c5jQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=/EZbf+V3wnDzWcvfxt0qlwfqKTOnBAYHxBhYQOTSpSY=;
        b=zAfyUEErFj6S4LLFK0hHXuhmOX2rC7Ojo0oNjLZXcfL0jOqcxTpVhg8sTzfz7BJuDj
         5q28lEz5PGgF+/+2aGXRHxPTEdI+PzyB2AKXrRvTJg4Dx9oAPeXKVNup0d4I1jC6Y0XU
         nys3mKvK/dYY++Nmch0WRrI2XNYOjCbpu70hX2LudndleATs3YMFuUXUgitAj++muwq5
         9p51c32aHW3nQSAPqQINAlFVKCmJKrgYa91ukExlMkXI/b9GGQ37kIs8NuIFEDFBseYE
         m0H73y8GwS4vluFhmTDcFe66hcA7tgU8XIEd/UOMbpjUJ99liZ496X2kEX3aewG97rkH
         RM3A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.192.110 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Return-Path: <vthakkar@vaishalithakkar.in>
Received: from p3plsmtpa06-09.prod.phx3.secureserver.net (p3plsmtpa06-09.prod.phx3.secureserver.net. [173.201.192.110])
        by gmr-mx.google.com with ESMTPS id m124si380723oib.3.2019.02.25.03.50.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Feb 2019 03:50:43 -0800 (PST)
Received-SPF: pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.192.110 as permitted sender) client-ip=173.201.192.110;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.192.110 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Received: from mail-lf1-f50.google.com ([209.85.167.50])
	by :SMTPAUTH: with ESMTPSA
	id yEmPgax3wOJJoyEmQgYCU2; Mon, 25 Feb 2019 04:50:42 -0700
Received: by mail-lf1-f50.google.com with SMTP id p1so6605780lfk.9
        for <outreachy-kernel@googlegroups.com>; Mon, 25 Feb 2019 03:50:41 -0800 (PST)
X-Gm-Message-State: AHQUAuZ4rpqxCX4H0G62BdN/+VC4LgDxg53qSo8P0MbDOI3yyi2YloPY
	Xl/tov4AzU3f2urJ6YxRYtsXMHHDIL6IcZipza0=
X-Received: by 2002:a19:e347:: with SMTP id c7mr9776502lfk.137.1551095440827;
 Mon, 25 Feb 2019 03:50:40 -0800 (PST)
MIME-Version: 1.0
References: <20190223111751.14620-1-jbi.octave@gmail.com> <20190223125932.GC16686@kroah.com>
 <CAAaskFCUXvPjTZXY_k1zohpVc-ij6sUoB4EcrsYRKU+ortXf4Q@mail.gmail.com> <20190224075553.GB31123@kroah.com>
In-Reply-To: <20190224075553.GB31123@kroah.com>
From: Vaishali Thakkar <vthakkar@vaishalithakkar.in>
Date: Mon, 25 Feb 2019 17:20:29 +0530
X-Gmail-Original-Message-ID: <CAK-LDbKbASMqei6p+Kd2F1uYsoERjqT0vb+oDva4RGL0biHdmg@mail.gmail.com>
Message-ID: <CAK-LDbKbASMqei6p+Kd2F1uYsoERjqT0vb+oDva4RGL0biHdmg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] net: ax25: Fix multiple blank lines warning
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-CMAE-Envelope: MS4wfDgvg+zxcL6AoPTsXRAkfH+ING6PxADLImNICCTCvfNQlYh7s9yIiDmxE4ywxnNTnTkK5i6UzYWBQvsV1fQP8E3GLLfUvldxq2jYpDXLigV83w5GXKcS
 bJcYMR1LdqdCnDR/zqH4Ne2VFR9YmXAFhJJTV6NAX/FwpXW0bdsnWFfC/6jgjJeMXrJIMaAWt5v0x5XhygTrgLdYDNdD+99X7Uk=

On Sun, Feb 24, 2019 at 1:25 PM Greg KH <gregkh@linuxfoundation.org> wrote:
>
> On Sat, Feb 23, 2019 at 04:17:36PM +0300, Ivan Ivanov wrote:
> > as usual, Outreachy is doing stiuupid almost-useless commits like
> > remove two blank lines or fix a tiny typo. They are trying hard to
>
> <snip>
>
> To let those of you on the outreachy list that might have received this
> junk know, the poster has been now banned from all kernel mailing lists
> for doing this type of nonsense.

Thanks.

> Very sorry about this, this type of behaivor is not ok and is not
> condoned by the Linux kernel community at all.
>
> greg k-h
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190224075553.GB31123%40kroah.com.
> For more options, visit https://groups.google.com/d/optout.

