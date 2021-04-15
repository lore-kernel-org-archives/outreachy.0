X-GM-THRID: 6951392846508195840
X-Received: by 2002:a2e:9cc5:: with SMTP id g5mr1957603ljj.331.1618497270914;
        Thu, 15 Apr 2021 07:34:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:b014:: with SMTP id y20ls1213278ljk.0.gmail; Thu, 15 Apr
 2021 07:34:29 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzrBpl2ya4RXJZZrgQ6aqebOcbWYpi300lvcTgA3GjUJLNKlr5xijWiwjn2Bv4l4gfs+3yt
X-Received: by 2002:a2e:302:: with SMTP id 2mr2086839ljd.159.1618497269097;
        Thu, 15 Apr 2021 07:34:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618497269; cv=none;
        d=google.com; s=arc-20160816;
        b=PY8CPt9GWWgP/rMr3Egwe7b0ilTiMBE4NT0y+YIukoGJAFIjmQ9P9IQOhTnPWwrx5G
         GLSLrxUqTDGzMoY/XQhfky8NXdnRJVLrppp6+QScnu/+MSBzGFu4RXT0RsgXSNYvnkV5
         tJHlLgBONZH+LHRMQITaW6RC+4cojM94KOll80SGN5veO/x8t32sg9zVT4fJsLdAid8U
         vcWH74nbXv2a28equJNnlbxVuY3X0cMyXQ6Q5ZW65kE/BU6os3E3Q4tCNckbWoC0CrEH
         Ow3j3oihrkXeiGuB+5ZQe/m5mcbjGsqbnZtlEQeBzhtRnMPHYjbAe3h/imt/RE87MDjY
         p6BQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:mime-version:user-agent
         :date:message-id:subject:from:to:dkim-signature;
        bh=WEdost48xlfZgn7NXmAQr/lhQKkbCatRLtTJ6WP8FtQ=;
        b=FX2Z+rdOjOMzCQk0S8ek9DhvZMWFF5aMiwBCwBlgLwrpzbonK3o0he5mbGNQf8Hpud
         GC059j3LHHrb+6v5gMjx7tPVj/8iomYTU+h6sQJRaFz3C2QYoiefkGhkj14NF+Jx9MBu
         4dAKsRcMgSS17TuA9nwcvtttB9rGE0DuxRDo8AtKWJ/r4+lekt06/cckOJsaLwKUKx2q
         6s+b31ox0JQS0hdqQfcqK9pMFH7J0yrLPEgBIM3ImcJmjW0cKZ1XX7Vfw43r3KjA8hFI
         eG55KabZbQnnvh1CG9f79wnKNiWhutYHLmYqYljw+DSFpqVfuo6Wc/VYLDSTltp1UsB/
         cDTQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@xs4all.nl header.s=s2 header.b="PGN/39yB";
       spf=pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.21 as permitted sender) smtp.mailfrom=hverkuil@xs4all.nl
Return-Path: <hverkuil@xs4all.nl>
Received: from lb1-smtp-cloud8.xs4all.net (lb1-smtp-cloud8.xs4all.net. [194.109.24.21])
        by gmr-mx.google.com with ESMTPS id a36si67080ljq.5.2021.04.15.07.34.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Apr 2021 07:34:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.21 as permitted sender) client-ip=194.109.24.21;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@xs4all.nl header.s=s2 header.b="PGN/39yB";
       spf=pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.21 as permitted sender) smtp.mailfrom=hverkuil@xs4all.nl
Received: from [192.168.2.10] ([84.202.3.209])
	by smtp.xs4all.nl with ESMTPA
	id X34bl3vvHsMyaX34elUUEq; Thu, 15 Apr 2021 16:34:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s2;
	t=1618497268; bh=WEdost48xlfZgn7NXmAQr/lhQKkbCatRLtTJ6WP8FtQ=;
	h=To:From:Subject:Message-ID:Date:MIME-Version:Content-Type:From:
	 Subject;
	b=PGN/39yBFMEkw+UfrfVl8AqLZY9kUy6FNOO9f+yo+mBvYCysmzi+S3wVIoDP7DG/e
	 UEEGVFBURpll5WVHZfDM/JNC3Z1bmA++t2zKk0LkmfQsb/Ip8TiwC+apN47mjEsiYR
	 TTYs1JujNBs89/UqlHyVkO/hzQ5DauNlTP4VATV22cRWYVFzCr/0MGL94QTwZSsezC
	 0hOBN2cQHAYQpKZBbA4N8g/AUghh8vbcRRBAQyy8IT/855tnI3a1TROeOw4SJpBh7c
	 r4+A8ZmguYGxSQa8k01rRpV/83FsMJ9JxnthGVgfgt6LhtkZNem6jl7RFq/rSkSl++
	 Kj4NiJGWY1asQ==
To: outreachy-kernel@googlegroups.com
From: Hans Verkuil <hverkuil@xs4all.nl>
Subject: Caught up with staging/media patch review
Message-ID: <b2d28208-6f06-b57f-16f3-5f5eca0b5f11@xs4all.nl>
Date: Thu, 15 Apr 2021 16:34:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.9.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-CMAE-Envelope: MS4xfOHa7qhqpyL8UIosXS6O+E7zlU3mtqRQaJ+JRjs8P4PLf1Soh940F2543JuaVhHf0sInOO+1UPO30YEXaYPjZIqblN9mTMhWeScDZMR0qKWV3b5eWQEi
 FmvoAC9W6J7uF4DsVXA+Sx3t819e1x5h7Ws8BWwQvdxunsQPLwGYpVVro4e8Bm0mGxvDuHv9jaix1cZ8xKALtulKNWFA6jsQGw4=

Hi all,

Similar message as Greg posted earlier today: I too caught up with all
submitted patches. If you have not gotten a mail from patchwork about
your patch changing status, then I missed it and you should drop me an
email, ideally with a link to your patch(es) from our patchwork system:

https://patchwork.linuxtv.org/project/linux-media/list/

The media git repo is also frozen for new patches until 5.13-rc1 will
be released, so I will keep track of the accepted patches in patchwork.
They will have status 'Under Review'. Once they are merged in a few
weeks the status will change to 'Accepted'.

I have a day off tomorrow, but I'll resume reviewing on Monday.

Regards,

	Hans

