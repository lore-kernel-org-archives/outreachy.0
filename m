X-GM-THRID: 6332661608531099648
X-Received: by 10.36.213.138 with SMTP id a132mr1206788itg.10.1474475212570;
        Wed, 21 Sep 2016 09:26:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.23.236 with SMTP id j99ls4618607otj.7.gmail; Wed, 21 Sep
 2016 09:26:52 -0700 (PDT)
X-Received: by 10.157.21.18 with SMTP id u18mr3236688otf.100.1474475212155;
        Wed, 21 Sep 2016 09:26:52 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x236.google.com (mail-pa0-x236.google.com. [2607:f8b0:400e:c03::236])
        by gmr-mx.google.com with ESMTPS id si10si8479228pab.1.2016.09.21.09.26.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Sep 2016 09:26:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) client-ip=2607:f8b0:400e:c03::236;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x236.google.com with SMTP id hm5so19936859pac.0
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Sep 2016 09:26:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=kqC1i2pHYv70PP8/LORWYqYPQ5yZ3pUyHjUYvMzBBV8=;
        b=cMBT5fzi6e29o75sJmx8cw4saTRoW93UDasbHu5HiRBLr9qtcJBTIkA6Hu7hY2RpEB
         ZSJvooYl00XEt5WYk7o4n761Vc3tBkEk3DkE2huNuyhwWxp/WKAf82JQJ06BQ2Bp22uZ
         Gnd2whAQuXnJEcOTrER1KDFMW+qGWTuzRocWoJuLLSeoNy5T6V1CKG75C57hibQiGsVH
         dj+wvRElc8cokygOhH3Y6Xgoqfx4Ps2x8evKaIe4H5yyyVsjwMG0JV0RGLfmyDrVw+HG
         u4bExl7p19xDD4Irnz0GQw1zOdAi1zJBe6VF+CIft6yPHjlVN06P88aAeUomSKUwOvZh
         soOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=kqC1i2pHYv70PP8/LORWYqYPQ5yZ3pUyHjUYvMzBBV8=;
        b=NOeakh0Cqej0wDsxAndlXBScmXMK3Deutnrw0GZwmrkrwGbV5lRQEUEo/afYx2J9uV
         q6u+p+QtsdNdho3V9SKPm+SPLitU/DQXTEDQl2rSOTcTz9kAaNgFA+61Lakwy9P3pgc1
         LcxiCe9Uv0QFgXRwDgLl5o1aGfEeNdIQHlpfxveBrMgXrS5bk1LYkOpwGIqkS+I3KL2b
         DOASJsvUwxsqouCcEFB0pV0lcTeWvPvXXc+uKs8HGISIb2Nf/SipKwfJUM7dyoh5lraa
         LYVBH1WS6X5Mi37o2Gj5Z6uXyRSScCqehQumKAfKBipx+KCkLFM7B7W/DAhN1MsliDCB
         NhYQ==
X-Gm-Message-State: AE9vXwPKIqBpfYzEoPqffLO81AZS5iAc46hwZHbsp9Zc2i1/fN4MckE4vAunpAbvT+sjyQ==
X-Received: by 10.66.164.227 with SMTP id yt3mr66419485pab.117.1474475211705;
        Wed, 21 Sep 2016 09:26:51 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-77-201.dhcp.embarqhsd.net. [67.232.77.201])
        by smtp.gmail.com with ESMTPSA id s12sm87769879pfj.73.2016.09.21.09.26.51
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 21 Sep 2016 09:26:51 -0700 (PDT)
Date: Wed, 21 Sep 2016 09:26:50 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: gnudevliz@gmail.com
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Mutt/Gmail Issue
Message-ID: <20160921162649.GA2358@d830.WORKGROUP>
References: <0eb31ed4-5370-4980-be9d-559b20044bf5@googlegroups.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <0eb31ed4-5370-4980-be9d-559b20044bf5@googlegroups.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Hi Liz,
Similar to Namrata, I don't know answer to specific question, but
I can share my .muttrc and .esmtprc that got it working for me.

And then there were some things I did over in my gmail account settings
probably related to selecting IMAP.

amsfield22@d830:~$ cat .muttrc
set sendmail="/usr/bin/esmtp"
set envelope_from=yes
set from="Alison Schofield <amsfield22@gmail.com>"
set use_from=yes
set edit_headers=yes
set spoolfile="imaps://amsfield22:mypasswd@imap.gmail.com/"
set folder="imaps://imap.gmail.com/"
set record="=Sent"		
set postponed="=Drafts"

amsfield22@d830:~$ cat .esmtprc
identity "amsfield22@gmail.com"
hostname smtp.gmail.com:587
username "amsfield22@gmail.com"
password "mypasswd"
starttls required



