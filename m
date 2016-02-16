X-GM-THRID: 6251954379592564736
X-Received: by 10.112.130.42 with SMTP id ob10mr2817770lbb.2.1455646562715;
        Tue, 16 Feb 2016 10:16:02 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.16.198 with SMTP id 189ls837357wmq.45.gmail; Tue, 16 Feb
 2016 10:16:02 -0800 (PST)
X-Received: by 10.28.30.147 with SMTP id e141mr2201505wme.0.1455646562254;
        Tue, 16 Feb 2016 10:16:02 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from mail-wm0-x236.google.com (mail-wm0-x236.google.com. [2a00:1450:400c:c09::236])
        by gmr-mx.google.com with ESMTPS id s141si1107933wmd.1.2016.02.16.10.16.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Feb 2016 10:16:02 -0800 (PST)
Received-SPF: pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::236 as permitted sender) client-ip=2a00:1450:400c:c09::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::236 as permitted sender) smtp.mailfrom=nevola@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x236.google.com with SMTP id g62so202643674wme.0
        for <outreachy-kernel@googlegroups.com>; Tue, 16 Feb 2016 10:16:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:content-transfer-encoding:user-agent;
        bh=YUT6h0Hff07lmw5CNrpBO43kfX7KK0jBJQjJUzO0uoo=;
        b=b64/0Emy34n58C1ZIuziTVzyEH5TwjjqQ/wgXg13gdjwVKfuQJIwhHK7KgPWjNpLTI
         90FzgzTl7JXzi5BBgzOOBpSno7M69xlnPjJJUDUwPHnPpdm0FOJQ9mjfky8FBL3a/yE+
         p1cSS/+OseiwiexApV0k7eX78hCET+DjuZZdIwqNAeaDWhoDsudx2U9jwRkq9B1xlaBf
         XEicAdD7cTgI7ssQLkeBL6er+9jy4JfOdWRTvFImP6UNKPcBxm8D6HEr9rUS97ev6nZH
         X/hGYlSeqY3l5nFU7i4EhcuivhN8NKovK1CKjGcIENBusW06nLHeKT7s4pxU9bnq1u2S
         MVNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:content-transfer-encoding
         :user-agent;
        bh=YUT6h0Hff07lmw5CNrpBO43kfX7KK0jBJQjJUzO0uoo=;
        b=hFMNlcWqi2+oyv+AtrZSrLbQ63pl4+3KhNwYAIcN+OeYguqxR9I7BAmPK2ittGohoC
         Q2lfyAenICdPlbTyMCTcC9L6apZjR3VBrQzC3NIc2sSoIwK4frEGZHUs3FpOVMEqWdLz
         dOyxT9ztMp83h5QOmn4PDxsk5dSv8Y5gPVgPV+o0ETIyzuCYWrj5+TOBABVnhTL+pbbo
         gMZKwChrY753qXi11uW2o7jpdlNHIkHTMQIhFxD1ra4Wv5klDc9e7JM4vxvMNMgsYODs
         XK795N9ip9TMNK21/RCftWelrwrbY1WsQXiIu6tEJgZ6Efks1oPQm3Vq4wOloWw0VVVI
         y0lA==
X-Gm-Message-State: AG10YOTfikYBk8f6mRlniDEnul+rbTNCLE6qi8wzGwJD+9Ha27uOrxN2Yuur/T667+Km7A==
X-Received: by 10.28.150.66 with SMTP id y63mr19540990wmd.17.1455646562126;
        Tue, 16 Feb 2016 10:16:02 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from sonyv (cli-5b7e49a2.wholesale.adamo.es. [91.126.73.162])
        by smtp.gmail.com with ESMTPSA id j18sm8667115wmd.2.2016.02.16.10.16.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 16 Feb 2016 10:16:00 -0800 (PST)
Date: Tue, 16 Feb 2016 19:15:58 +0100
From: Laura Garcia <nevola@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: Presentation
Message-ID: <20160216181557.GA9911@sonyv>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
User-Agent: Mutt/1.5.21 (2010-09-15)

Hi list,

My name is Laura Garc�a and I'm an Outreachy Round 12 applicant.

I would like to apply for the nftables project with Pablo due to my network load balancing study. I've been looking for any task related with that project but the tasks URL link doesn't seem to be updated:

http://kernelnewbies.org/OutreachyRound11

Should I contact directly with the mentor?

Thanks!


