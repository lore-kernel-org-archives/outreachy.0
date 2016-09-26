X-GM-THRID: 6334501758545428480
X-Received: by 10.157.24.124 with SMTP id t57mr1918383ott.68.1474866121732;
        Sun, 25 Sep 2016 22:02:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.61.202 with SMTP id l68ls13239089otc.1.gmail; Sun, 25 Sep
 2016 22:02:01 -0700 (PDT)
X-Received: by 10.129.106.193 with SMTP id f184mr5460639ywc.56.1474866121414;
        Sun, 25 Sep 2016 22:02:01 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id um12si3972375pab.2.2016.09.25.22.02.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Sep 2016 22:02:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id 21so8582041pfy.1
        for <outreachy-kernel@googlegroups.com>; Sun, 25 Sep 2016 22:02:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=9sVL1K0JzHgF+eYHFOXsffnImbiR8LuGSYwcw6bpKJE=;
        b=kdK9ercCNxybdBv98nxAKK3+qUURxYCiyvYBSLbqKGnzJXFtjVHaGQOTwVMaXkLyq6
         OgILo7Lzw+ixil2ln8Q7qGp9fjeo4kes5winW/h0PrM8NKitIH52hExwRhc8j3V0fUWC
         8gtuxzPcjMa2h4p7u/Jrum7nPmuMeiEKaawi38NwH4Y/tI4xUajyx1cZMnxaxvZxrXf1
         MtcxNn/8adH73YRkREk4zV72OSRpGrlPgD8nf0Q+TLh8rMFGO7QvEIIVJk1pwggyFqfB
         aIvzpipEUcNE7CWHVRlmL+qEr5FJ5lNQ/wBN93FuaN10eKqaE60QS7hgYU7qczxw2Z7T
         afUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=9sVL1K0JzHgF+eYHFOXsffnImbiR8LuGSYwcw6bpKJE=;
        b=c/tPyyAr1XK4f5/yyIV57c0E5UuA4sLxLydPEs/0CV9ClFBRlV7kI+AnSB0T9EUxy0
         EBxzRaP38bhh3H6C6pU1hTKzCD0cO+61hlgGf8+v1j/Q2tYpnR82hcjv98yBLb7mxFau
         XKoFxECEvEOMK/AtM4NnknPb4OzcKzIKe6VSfXqkIJXiIQuZuTWOxMwJ9+uY8Wuxq9rk
         jbAMCtVj07ugtH4594PcOOrKhBMLrIqEmd5Aj4hmkRBbRp9SQw/Egb+sTf0f+xdHehLf
         V3sPfcfXcF03IxocRXmFOAd95PF0qaA6dgdNkSqBQUSCXle5y9zueeqZHk6W7Qgufv5S
         3ZOA==
X-Gm-Message-State: AE9vXwOVphhAdDpSuLkDzyTYg+AVduGdTJ+shoPIyxrSLHct6jgh3eCWkEvI5Fs+2OAkVg==
X-Received: by 10.98.204.85 with SMTP id a82mr34523574pfg.180.1474866121223;
        Sun, 25 Sep 2016 22:02:01 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from gmail.com ([106.215.164.95])
        by smtp.gmail.com with ESMTPSA id t5sm26962085pfi.26.2016.09.25.22.01.54
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 25 Sep 2016 22:01:59 -0700 (PDT)
Received: by gmail.com (sSMTP sendmail emulation); Mon, 26 Sep 2016 10:31:40 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com,
	jic23@kernel.org,
	knaack.h@gmx.de,
	lars@metafoo.de,
	pmeerw@pmeerw.net,
	gregkh@linuxfoundation.org
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH 0/2]  Staging: iio: constify attribute_group structures
Date: Mon, 26 Sep 2016 10:31:37 +0530
Message-Id: <1474866099-12282-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

Constify attribute_group structures.

Bhumika Goyal (2):
  Staging: iio: adc: constify attribute_group structures
  Staging: iio: light: constify attribute_group structures

 drivers/staging/iio/adc/ad7280a.c   | 2 +-
 drivers/staging/iio/light/tsl2583.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

-- 
1.9.1


