X-GM-THRID: 6667889243892744192
X-Received: by 2002:a19:760a:: with SMTP id c10mr1677853lff.9.1552488946328;
        Wed, 13 Mar 2019 07:55:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:121d:: with SMTP id t29ls326339lje.4.gmail; Wed, 13 Mar
 2019 07:55:45 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzJQT78W/3BIhKBO7seM/uQOwG7rQW+PU2H1C0yKRylRzoAVzumoPzRxAOkXS1c3hqykYkX
X-Received: by 2002:a2e:5bc9:: with SMTP id m70mr792873lje.18.1552488945483;
        Wed, 13 Mar 2019 07:55:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552488945; cv=none;
        d=google.com; s=arc-20160816;
        b=ERO9S0KH0C78OCgchEA5YHAwqmaptjXaRM5KYXy/m6h9Uxu3ZjP5R9hmWmoMSeHT5x
         CdzbNMq/RS7M7sdzwdC7fYVwYrRqt+fwqzdZujriLNG36WB7MIUVXVJy6tDRTvQpWkmS
         hUsrJKSniHiXTTr/lFv3ngyYkgby16FM8wt9gTF3CWu/gx0CRwXG1LWDGi3mJ31J8g61
         FmW+B+DNt3IIiz1oss6cEF++RII6TjrHqy8vqu7fuVpE2VubmKW0ORYduvYzttqTPAX6
         hFU4P0zweuJhcEsRaNH3/7FCY2pDKsr4s7eAsVZMlO3c+9bBkFgSAGXubnAD9F3odH3h
         TJEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=6Ti9fP67vZs3ENLJSiC8CLzWopXAoY3Qb++Mr5iSUrs=;
        b=FsaBRxfWyymZYzhWpxI09KOp+bPpqU4itgHlW5ImyVQbz42d+wMaJiQSsKIe2s/A34
         a8Dqp5c3w9dQsm/4c7VuT1ZauxRtf1yZkKY6bMvTItXiHNLrCAgOpLVwcf9uaHA+q66K
         TZwLonYazgShYUDSs2OoKeO72Fd5ChpDcs19XjA0nVXAxOkOfJe4va8ZWUqIuHrzFvDf
         8pXpgG7YAlpOrX1ZDd28OvvPlLQVKvyU+K4NCcYSNHaw7o6nrcxuVv+qltsuoiGExMzO
         77XAgy0noLC982Bfl39GX1F9U6FF0ntZFdciBAJmxTl90Ps7efBRr6VwrsE1UiOzqJHX
         RXDQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="i1/VM9qY";
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com. [2a00:1450:4864:20::341])
        by gmr-mx.google.com with ESMTPS id y1si526215lfe.1.2019.03.13.07.55.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Mar 2019 07:55:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) client-ip=2a00:1450:4864:20::341;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="i1/VM9qY";
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x341.google.com with SMTP id t124so2185127wma.4
        for <outreachy-kernel@googlegroups.com>; Wed, 13 Mar 2019 07:55:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=6Ti9fP67vZs3ENLJSiC8CLzWopXAoY3Qb++Mr5iSUrs=;
        b=i1/VM9qYQtUzY3WS1ibVSG717xN0wt8E2srHMsUXUUFd6YyskZvtdw2+vc/NJj6XmX
         jZL8mRC6SHZoYoDStJfLP1OkjGvTKcwIq2Kci5+U4AhYmwGSVWwmcjjonTXGYE1GxUyR
         hBj7zLosK3SoD5uU3R/YAf//yfaNfQkpdvjNAaJnCFeNp0EnhSLHg5qKnWJeQvw5f1Az
         bMHCy0CZjMruxzaQu7hGCrnMnGvs8cW/SFN29kuyY2MtFLQ0FHr6nYEzLPnwUW3o1jiG
         EpICk5lAja55aQR85/9fsSaruPuVRP1Q0qzdQqFgEsrDl8vcUVwjqPKM9s5sw/Jieuup
         HRPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=6Ti9fP67vZs3ENLJSiC8CLzWopXAoY3Qb++Mr5iSUrs=;
        b=HOsxHNBzzwoOJWFYz1mP/bNPHP5lDmePiCMz+gun4743U26c8ywzNkw8PwXKppuX3j
         oMRo0dv7WYPA6R7KW7WwUidV1BLc9DnOlBblzn606jmzDQgg2llQyBDfhj95CW2487zR
         LYoZgFk/TCtgNKEGf89hT9UKEOOme/LhR4nrDoNGrbRJh5bjwSSZAMyj+yn0mKemki97
         /fji/FOg7DkBgdooMUJ+zwv95LeZYEDE86s9k3g7qpsRQJ18Vg4MYfjuk+yQPFt+oP3/
         T14NkdGInU0PGGwP57ijqs5aJeBto1WmTH5CPQZPhnfSJPhncXD0KWuKAkS1ZjLmGPpe
         Ajdg==
X-Gm-Message-State: APjAAAUOJfkn/iAebp6LIke43M48SlfDlpbIMU3fR9xNDI09DzmA4X5D
	bCuoR9oLWLnZejDNhn7sIN61/RU=
X-Received: by 2002:a1c:4408:: with SMTP id r8mr2589084wma.149.1552488944658;
        Wed, 13 Mar 2019 07:55:44 -0700 (PDT)
Return-Path: <jbi.octave@gmail.com>
Received: from localhost.localdomain (cpc102034-bagu16-2-0-cust471.1-3.cable.virginm.net. [81.97.71.216])
        by smtp.gmail.com with ESMTPSA id p68sm1329218wme.45.2019.03.13.07.55.43
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 13 Mar 2019 07:55:44 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
To: gregkh@linuxfoundation.org
Cc: linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v3 2/2] staging: rtl8192e: remove boilerplate license text
Date: Wed, 13 Mar 2019 14:53:20 +0000
Message-Id: <20190313145320.26782-3-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190313145320.26782-1-jbi.octave@gmail.com>
References: <20190313145320.26782-1-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove boilerplate license text.

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 drivers/staging/rtl8192e/dot11d.c | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/drivers/staging/rtl8192e/dot11d.c b/drivers/staging/rtl8192e/dot11d.c
index 6d57abedaa34..82c11caeee7a 100644
--- a/drivers/staging/rtl8192e/dot11d.c
+++ b/drivers/staging/rtl8192e/dot11d.c
@@ -2,14 +2,6 @@
 /******************************************************************************
  * Copyright(c) 2008 - 2010 Realtek Corporation. All rights reserved.
  *
- * This program is distributed in the hope that it will be useful, but WITHOUT
- * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
- * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
- * more details.
- *
- * The full GNU General Public License is included in this distribution in the
- * file called LICENSE.
- *
  * Contact Information:
  * wlanfae <wlanfae@realtek.com>
  ******************************************************************************/
-- 
2.20.1


