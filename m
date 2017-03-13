X-GM-THRID: 6397018299173961728
X-Received: by 10.13.232.73 with SMTP id r70mr16786226ywe.53.1489421888829;
        Mon, 13 Mar 2017 09:18:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.68.202 with SMTP id p10ls8350624otg.18.gmail; Mon, 13 Mar
 2017 09:18:08 -0700 (PDT)
X-Received: by 10.176.80.240 with SMTP id d45mr1204053uaa.4.1489421888176;
        Mon, 13 Mar 2017 09:18:08 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id r66si3162053pfb.7.2017.03.13.09.18.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Mar 2017 09:18:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id 77so18488162pgc.0
        for <outreachy-kernel@googlegroups.com>; Mon, 13 Mar 2017 09:18:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=5zpk825ATHxz5K4TSO7UH0PqgRzYKTKHdEAN8EQK11c=;
        b=F/Kg4Ex7k0/KUwm+KSlo0cMMZBONu897W8kit4CGYF3Pmr04eVkkhgveDq06jF1l8p
         ag1APLxykAs1h0X+9T+7s0J2POMPPNn/uF3KOv4w1woewSipPNGcs5JGB8WLsLpb5wux
         sYrmxUwBpMnM/boz5/RxT06NdK3M1Sq8FSGAxLXXVNkjZvxZWn9wlLFS3ElXwHfY/B8S
         tSYXnXdZEVBcLX1T7oUDC0XF/MAwjxVAoGa85Oqw2vIo3N7U8S1ZD6zg/8b/4kYGqEQ7
         1hr2mVYQhZ0EIpmE32+oQVfcwcrKaaq1momp8fSVd39VJJ2v6jhCR1g0Ru2CR8O1xuNe
         pyfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=5zpk825ATHxz5K4TSO7UH0PqgRzYKTKHdEAN8EQK11c=;
        b=ipBL72WOy+TWKVITOWsUkkg2/qlihWrUDP48e6zp46RbpVqKnmVwP9SKPzhuLjgiBo
         s3Y+h3a2LijE6m39Fo/+BwKcEKDZa9nKA0WV8YxvGysFOAMEuLieCUK9kOxxDtKZjhYc
         y8fkPdb2kv4SwNIIe2GsL6xf79LxrlmfapPrtdgs4nWAVaZVbvwrhzeN5AYmuFbhB34b
         09sE5DvY1u4Wq19KExcLbes/AeAvfEeL87+quaItQCQpUlT9U1MgQ3l0R7RpSCW5fUeS
         5Nemf98conlRecUSNoickxj1e4XmM/7t17unC1LBQkrZ/bAs9gdohJMEX1y7Ox6NsfB1
         W+vg==
X-Gm-Message-State: AMke39lGy+5XKvTYbwGCNIKabQnyvyLKwA9wGT0YK40JLecPFQiJ/PLcmhwCKklDt5KC8g==
X-Received: by 10.84.149.168 with SMTP id m37mr47952195pla.97.1489421887890;
        Mon, 13 Mar 2017 09:18:07 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id 78sm33613987pfm.122.2017.03.13.09.18.05
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 13 Mar 2017 09:18:06 -0700 (PDT)
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: sudipm.mukherjee@gmail.com
Cc: teddy.wang@siliconmotion.com,
	outreachy-kernel@googlegroups.com,
	kirk@reisers.ca,
	samuel.thibault@ens-lyon.org,
	gregkh@linuxfoundation.org,
	speakup@linux-speakup.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	Arushi Singhal <arushisinghal19971997@gmail.com>
Subject: [PATCH v2 0/4] fix multiple checkpatch warnings
Date: Mon, 13 Mar 2017 21:47:56 +0530
Message-Id: <20170313161800.17338-1-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.11.0

Fix multiple code styling warnings issued by checkpatch on files
in sm750fb driver 

Arushi Singhal (4):
  staging: sm750fb: function prototype argument should have an
    identifier name
  staging: sm750fb: fixes add blank line after
    function/struct/union/enum declarations
  staging: sm750fb: Alignment should match open parenthesis
  staging: sm750fb: Remove typedefs

 drivers/staging/sm750fb/ddk750_display.h |  2 +-
 drivers/staging/sm750fb/ddk750_mode.c    | 83 ++++++++++++++++----------------
 drivers/staging/sm750fb/ddk750_mode.h    | 20 ++++----
 drivers/staging/sm750fb/ddk750_power.h   |  2 +-
 drivers/staging/sm750fb/sm750.h          |  4 +-
 drivers/staging/sm750fb/sm750_cursor.c   |  3 ++
 drivers/staging/sm750fb/sm750_hw.c       |  2 +-
 7 files changed, 58 insertions(+), 58 deletions(-)

-- 
2.11.0


