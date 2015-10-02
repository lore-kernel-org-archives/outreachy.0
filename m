X-GM-THRID: 6200599277557776384
X-Received: by 10.50.152.74 with SMTP id uw10mr3163712igb.4.1443783191795;
        Fri, 02 Oct 2015 03:53:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.77.75 with SMTP id q11ls500591igw.40.canary; Fri, 02 Oct
 2015 03:53:11 -0700 (PDT)
X-Received: by 10.107.149.4 with SMTP id x4mr607651iod.20.1443783191151;
        Fri, 02 Oct 2015 03:53:11 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-yk0-x231.google.com (mail-yk0-x231.google.com. [2607:f8b0:4002:c07::231])
        by gmr-mx.google.com with ESMTPS id i77si1091429ywg.4.2015.10.02.03.53.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Oct 2015 03:53:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2607:f8b0:4002:c07::231 as permitted sender) client-ip=2607:f8b0:4002:c07::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2607:f8b0:4002:c07::231 as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-yk0-x231.google.com with SMTP id t14so106733147ykf.0
        for <outreachy-kernel@googlegroups.com>; Fri, 02 Oct 2015 03:53:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type:content-transfer-encoding;
        bh=oku41dA2HV8ZH9gku62UyNqDFEedW1kDWxQ3WFAUWMQ=;
        b=PeY515g528qns30o5sPa3EB6Dbki8VjfYPlHE8NseKUxdYcYI2gfdehU6+drv+FVZp
         yXp+EEXr8BxYQ1DsdyNEZL1fWkXM3FuRO2dvFEMTKZqJcbNx9Kf6wqGMQXp8D5vdZ4S/
         1POYzZzyPHJMERSBAJvJCGc+WwXNtdme4LNzJGxyTr6lqDBXg/sr7xs4zrcHCzs5jGBb
         o7yaZwykGZub9pyJDiQkz/F/osq9ckwnMDyOekWD2g0PngZt0nSOewuOF6c1+HvE8OnU
         m+ZsWSmliO2kOyjJHKcWR7JjEe7gmAdMMM/MYX9cwPtxz3gG75AMVuxJm7nWHYy1gPDh
         +/Bg==
MIME-Version: 1.0
X-Received: by 10.170.208.145 with SMTP id z139mr12664713yke.108.1443783191003;
 Fri, 02 Oct 2015 03:53:11 -0700 (PDT)
Received: by 10.37.107.66 with HTTP; Fri, 2 Oct 2015 03:53:10 -0700 (PDT)
In-Reply-To: <20151002103458.GE9346@sudip-pc>
References: <1443779964-12035-1-git-send-email-ciorneiioana@gmail.com>
	<20151002103458.GE9346@sudip-pc>
Date: Fri, 2 Oct 2015 13:53:10 +0300
Message-ID: <CAHWJYFnj8ivorHWNxghWuXJk64E3JT42_NW3NqMyZGfjAKbjPQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v3] staging: wlan-ng: replace memcpy
 with ether_addr_copy
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 2, 2015 at 1:34 PM, Sudip Mukherjee
<sudipm.mukherjee@gmail.com> wrote:
>
> On Fri, Oct 02, 2015 at 12:59:24PM +0300, Ioana Ciornei wrote:
> > Replace memcpy with ether_addr_copy since the output of pahole
> > shows that the addresses are aligned.
>
> Please always check your patch using checkpatch before sending. And more
> important than that your patch is introducing build warnings.
>
> checkpatch errors:
> ERROR: "(foo*)" should be "(foo *)"
>
> Build warnings:
>
> drivers/staging/wlan-ng/p80211netdev.c: In function =E2=80=98p80211knetde=
v_set_mac_address=E2=80=99:
> drivers/staging/wlan-ng/p80211netdev.c:647:2: warning: passing argument 1=
 of =E2=80=98ether_addr_copy=E2=80=99 from incompatible pointer type [enabl=
ed by default]
>   ether_addr_copy(&macaddr->data.data, new_addr->sa_data);
>   ^
> In file included from drivers/staging/wlan-ng/p80211netdev.c:65:0:
> include/linux/etherdevice.h:271:20: note: expected =E2=80=98u8 *=E2=80=99=
 but argument is of type =E2=80=98u8 (*)[6]=E2=80=99
>  static inline void ether_addr_copy(u8 *dst, const u8 *src)
>                     ^
>

Again, sorry.
I resent it.

Ioana

