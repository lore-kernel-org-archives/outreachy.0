X-GM-THRID: 6803023005726277632
X-Received: by 2002:a05:6638:201:: with SMTP id e1mr4290798jaq.111.1583952240356;
        Wed, 11 Mar 2020 11:44:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:8616:: with SMTP id f22ls602665iol.9.gmail; Wed, 11 Mar
 2020 11:43:59 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvSKC2OBT2x0dc3JlmxMBJDmXOVHDHkRrMh6elqzDWgOb6xcAV3GmCTEZ6hSvIZC7cHs4FU
X-Received: by 2002:a5d:858f:: with SMTP id f15mr4203738ioj.113.1583952239170;
        Wed, 11 Mar 2020 11:43:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583952239; cv=none;
        d=google.com; s=arc-20160816;
        b=Or1Jm6gkhEghqBN1KfNWQs1orXQOVhFgMMuNCPYC3dRtK3h4M+wR1Cw6LzbAFpC++Q
         19aybozZflgzMxJ5GrmxpFK2tsGHy69SEvhbKnfCtntHEbd0d4BtzwHcngE6aLVlEcrp
         iOP+AVQHi870Kd8in71FQcPMavjaT1/attfKZst8oM0KxmHKuD8DAtzXGgV1TNWZFXwa
         bgIUZo3ywR/iL3nPRz2XHAgC1BuirXnwMAsA+PliS3EzYTl/p2Lb/YDIVC8puK3sA899
         BvzQDsmrtmQkUTU6IMb0Vfa1NE4z+ceufIQZ3qqiMuKKfX2C3L44EKaeuxXKOCrZidb/
         0FOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=NcPeOSqXaD+F7vrSQbMbmtugiVo9jMqkQBimMDSAC5M=;
        b=Drfo6nbZwYlIXEPx4jvSwOo+kpg9+bNK2zB5D0/C+6b9/6N1JR/V9mnDZFx2f/cTmx
         9QqaGl5LSkQAvhSK7GkjDN+h4flNjC9tojzFOX85RaMv3EjMWQuu15B7KQy9WSXXUY4i
         7QmfWk5MGZxJvmwpMuD6p56uzwT10++0FwC/dd6shkAShm1d0lCIUMEwNOsfDN5mDB4A
         JSiDws2wSBg8KM8EEV/80dMfHGuB5CN+0hWWN1EoWYgV9RuvO/4co92B7mLDce5PBbQ5
         ml2eysYLfsWL+HVczjNHwWEqYuGswfiLDfOhgszy6TtSDQSbvRCrv1Xt4dq5e7uSeUBa
         NizQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@es-iitr-ac-in.20150623.gappssmtp.com header.s=20150623 header.b=sf2RbMxy;
       spf=neutral (google.com: 2607:f8b0:4864:20::441 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) smtp.mailfrom=kgupta@es.iitr.ac.in;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=iitr.ac.in
Return-Path: <kgupta@es.iitr.ac.in>
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id s201si87785ilc.0.2020.03.11.11.43.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Mar 2020 11:43:58 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::441 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) client-ip=2607:f8b0:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@es-iitr-ac-in.20150623.gappssmtp.com header.s=20150623 header.b=sf2RbMxy;
       spf=neutral (google.com: 2607:f8b0:4864:20::441 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) smtp.mailfrom=kgupta@es.iitr.ac.in;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=iitr.ac.in
Received: by mail-pf1-x441.google.com with SMTP id 23so1838987pfj.1
        for <outreachy-kernel@googlegroups.com>; Wed, 11 Mar 2020 11:43:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=es-iitr-ac-in.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=NcPeOSqXaD+F7vrSQbMbmtugiVo9jMqkQBimMDSAC5M=;
        b=sf2RbMxy/pqgms3/XZwlFMrycYezPgcakd9QfBa+fqs/ji+ByvK0DflE0xeQwZC66y
         qiV28+C8G6WE+hvuLOvoohqWcBImhne+hjZ0DPtHP31QZK4Z+OvmRypSb83QnQWdxu4T
         o9YJnqs7m3bYT6E0Z60C2Tq9JEnSdMY1QzMBWrh6wTm8l5ub3Fcf5mk3uNv+0e9yf0Ed
         NyTDvSaHlkHzgTbhsRRMqr1Z9Zd6xkyKUiv+33dD2ddOwvtWfRkHXhyKERLg9riH3nH9
         gGlbsmzNhvJxriEgD9ElSpA6RsThfAA5dys01PBTaujCzEPLg0KQVRRXcbxG0VvhfbhQ
         kkmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=NcPeOSqXaD+F7vrSQbMbmtugiVo9jMqkQBimMDSAC5M=;
        b=L6M8PfyaH8ynj7ERggfkTMbW4lKEIDmS4H0sa45NAtR0/rYZADFSvEdLkZFNlaWdOM
         1CQfA1Q5wHobD7kQZ4R6aFL0GxEuiy0XEcrlKX4tlhVTpPDVwmQ1zHQ3rGtydFNMZNhe
         oqGTPNRplV54LBYyLpCJmYgzB6ZzEBJdsBXiJo1FzCiw/LkX2Rp77LeuqAWUk1lHrV++
         5jyBSeQ0mw0D+GBtzBjNoF90kgKDVv37mpbAzWtkQLpnH5i+2mHF76iedmpRNjYEGdTF
         bHjFHW+bXqpP62tuNJaj35WuW3dEsxWNXiZHkl8T0TW7Z+tpOhpLY0Qf+G2e/p7vtQRG
         PmbQ==
X-Gm-Message-State: ANhLgQ1hI/l7guX30TIoV+FNIMT2ifF3ZJXI4twPsndM/igy7+j69leN
	KOeRm3J6IyltJsjEdHQ8IkZplQ==
X-Received: by 2002:a62:cd0a:: with SMTP id o10mr4275493pfg.18.1583952238338;
        Wed, 11 Mar 2020 11:43:58 -0700 (PDT)
Return-Path: <kgupta@es.iitr.ac.in>
Received: from kaaira-HP-Pavilion-Notebook ([103.37.201.175])
        by smtp.gmail.com with ESMTPSA id e12sm36884440pff.168.2020.03.11.11.43.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2020 11:43:57 -0700 (PDT)
From: Kaaira Gupta <kgupta@es.iitr.ac.in>
To: Ian Abbott <abbotti@mev.co.uk>,
	H Hartley Sweeten <hsweeten@visionengravers.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Cc: Kaaira Gupta <kgupta@es.iitr.ac.in>
Subject: [PATCH 3/5] staging: comedi: drivers: add line after struct
Date: Thu, 12 Mar 2020 00:13:25 +0530
Message-Id: <20200311184327.25338-4-kgupta@es.iitr.ac.in>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200311184327.25338-1-kgupta@es.iitr.ac.in>
References: <20200311184327.25338-1-kgupta@es.iitr.ac.in>

Add a blank line after struct declaration

Signed-off-by: Kaaira Gupta <kgupta@es.iitr.ac.in>
---
 drivers/staging/comedi/drivers/das08.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/comedi/drivers/das08.c b/drivers/staging/comedi/drivers/das08.c
index 65e5f2e6c122..e6c1ff0e5beb 100644
--- a/drivers/staging/comedi/drivers/das08.c
+++ b/drivers/staging/comedi/drivers/das08.c
@@ -141,6 +141,7 @@ static const struct comedi_lrange *const das08_ai_lranges[] = {
 static const int das08_pgh_ai_gainlist[] = {
 	8, 0, 10, 2, 12, 4, 14, 6, 1, 3, 5, 7
 };
+
 static const int das08_pgl_ai_gainlist[] = { 8, 0, 2, 4, 6, 1, 3, 5, 7 };
 static const int das08_pgm_ai_gainlist[] = { 8, 0, 10, 12, 14, 9, 11, 13, 15 };
 
-- 
2.17.1


