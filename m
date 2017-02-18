X-GM-THRID: 6388545566354178048
X-Received: by 10.99.112.1 with SMTP id l1mr4494126pgc.142.1487449176783;
        Sat, 18 Feb 2017 12:19:36 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.38.42 with SMTP id a39ls7231835otb.26.gmail; Sat, 18 Feb
 2017 12:19:36 -0800 (PST)
X-Received: by 10.13.196.129 with SMTP id g123mr4961635ywd.140.1487449176224;
        Sat, 18 Feb 2017 12:19:36 -0800 (PST)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id s64si794999pfk.0.2017.02.18.12.19.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 18 Feb 2017 12:19:36 -0800 (PST)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id c193so1937789pfb.3
        for <outreachy-kernel@googlegroups.com>; Sat, 18 Feb 2017 12:19:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=e/LSukys+HMXS8N+avhKMkPqv53W6abGHAWcZFpc2HY=;
        b=qmZUigMI2PIFAoAoYsuiGL5OcfSfXhNDWIN27ofzwdEsMyIyM/sCPSuKWSFZDXqrAR
         +Xu2JU0mUVodI/jTb23A5YP3gAGoyOuXpfnoUBM+VhOISlewoCD/axSwuQz0eFLbu+E8
         y+jH9T0hV33+SC0SKJ3nYPaGiU6nX/Mw8iUYkrUxdsITNtWZx7JWhfyAIXhq4Wdx2QU0
         VYDKxadILgjkvLZBDGEhtSjvNYlv991mCmj9qs0CI7ifRrXIeCNimN3qBbSq4hOzQk5X
         O97JJiHv3cVO62ldgHuiY3z6+AMdzx3xemDx1N/pTRAxhJKaWeQXiU5u6WYoa2SjETM/
         CmDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=e/LSukys+HMXS8N+avhKMkPqv53W6abGHAWcZFpc2HY=;
        b=DEIPY3wtb1EPGmEw4Jn4xuMpEmA9bSVnSmY9Hm148zKtF5GEKjzlemSSeXYoifc9hL
         4Cja36VN7vk6Rjr6iaW+r55tI3oo2a7rCAcxmls2uRhwnIaaUMU5Ybe8Bu73LT86qxMS
         nEa6Wok1Ey1eIXTVE9sCTvJm+nB2Q1qzYk3Yyph5OHSblRCfqNsHUS9Mwe5T/0nDauLY
         3RUwnUClklEijP+MbVx32/s2Bw+bcYe81NAl8DHJUsrYoCX0732iQ2kgGbRpDYYxlnho
         4zKbKWn3exJ7LW41hdZ3amcQNYUlgV1jxgUFMH/5FItC6O/vf9mEXRp4e7MZ1GOG3lxB
         DGIQ==
X-Gm-Message-State: AMke39lkiTB+TzXXJ9olq2sE/AqYiqKA1+XRTwINTo9Vnt8RwfTc/9+huSceLpQ5cuc7OA==
X-Received: by 10.98.3.3 with SMTP id 3mr16791813pfd.95.1487449175785;
        Sat, 18 Feb 2017 12:19:35 -0800 (PST)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([182.58.167.219])
        by smtp.gmail.com with ESMTPSA id m20sm26899851pgd.17.2017.02.18.12.19.31
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 18 Feb 2017 12:19:35 -0800 (PST)
Date: Sun, 19 Feb 2017 01:49:23 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Hartmut Knaack <knaack.h@gmx.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-iio@vger.kernel.org
Subject: [PATCH 0/3] Use macros BIT() and GENMASK()
Message-ID: <cover.1487448326.git.karniksayli1995@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Use BIT() and GENMASK() macros for left shifts. Also add a blank line after a
function declaration.

sayli karnik (3):
  staging: iio: ad7152: Use BIT() macro for left shifting 1
  staging: iio: ad7152: Use GENMASK() macro for left shifts
  staging: iio: ad7152: Add a blank line after a function

 drivers/staging/iio/cdc/ad7152.c | 37 +++++++++++++++++++------------------
 1 file changed, 19 insertions(+), 18 deletions(-)

-- 
2.7.4


