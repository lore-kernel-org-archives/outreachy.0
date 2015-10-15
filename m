X-GM-THRID: 6205870643882229760
X-Received: by 10.112.190.74 with SMTP id go10mr2256774lbc.9.1444916856055;
        Thu, 15 Oct 2015 06:47:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.86.70 with SMTP id k67ls165683lfb.43.gmail; Thu, 15 Oct
 2015 06:47:35 -0700 (PDT)
X-Received: by 10.112.54.197 with SMTP id l5mr2169254lbp.21.1444916855300;
        Thu, 15 Oct 2015 06:47:35 -0700 (PDT)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wi0-x231.google.com (mail-wi0-x231.google.com. [2a00:1450:400c:c05::231])
        by gmr-mx.google.com with ESMTPS id ch7si497126wib.2.2015.10.15.06.47.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Oct 2015 06:47:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::231 as permitted sender) client-ip=2a00:1450:400c:c05::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::231 as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x231.google.com with SMTP id ll6so19776860wic.1
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Oct 2015 06:47:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to:content-type;
        bh=rWaK3KUvxsFH2FWALzL0evsanC6qkozB2zmQTvNtgxA=;
        b=EnQqA829Q/ta1gI5g4Z+ClW02XCiQioB92wdtDsWTmTzHyQviKwDA5Sih8E+wW1TTr
         2mDwAaQHUtixFMnyfdNg2TkKK2jS/WTblNcTw4VsoZImP6r+tsyExHYfIrAgcoBHW+0x
         rtNENaxqth9ORv0ETUp4s3Zdmtg8h2f+bEMmv/CJOjTxl1rZG1ctiioB527Ir7AJWhWh
         At0YULjJjHrLMM17H4e6Cx+Rt9+Y8JQmDW5h1mBoHSc1obXtqxdpXL9nBVsHeS2vQ661
         QnukkXQZ5rZIrxAm8IFqdPWB89KBSNjqUWq4BZvw40mr8Bsr0xxKGM9Jfg4m2aSvokpy
         n2Dw==
MIME-Version: 1.0
X-Received: by 10.180.211.47 with SMTP id mz15mr10537274wic.93.1444916855144;
 Thu, 15 Oct 2015 06:47:35 -0700 (PDT)
Received: by 10.194.165.102 with HTTP; Thu, 15 Oct 2015 06:47:35 -0700 (PDT)
Date: Thu, 15 Oct 2015 16:47:35 +0300
Message-ID: <CAEnQRZAsbQZac-Yw0re9zSP+P4twAVex-9r40ujnTsjE0LnPiA@mail.gmail.com>
Subject: Outreachy apply period
From: Daniel Baluta <daniel.baluta@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

Hi,

Just to make sure we are on the same page. You can send patches between
September 29  - November 2. The "hold" period mentioned here:

http://kernelnewbies.org/OutreachyApply

is from last year, I added a commet there.

LinuxCon was last week, so at this moment you *can* send patches!

thanks,
Daniel.

