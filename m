X-GM-THRID: 6250070785112670208
X-Received: by 10.129.72.199 with SMTP id v190mr45258308ywa.44.1455218714918;
        Thu, 11 Feb 2016 11:25:14 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.248.168 with SMTP id yn8ls616715obc.21.gmail; Thu, 11 Feb
 2016 11:25:14 -0800 (PST)
X-Received: by 10.182.79.134 with SMTP id j6mr44923663obx.4.1455218714526;
        Thu, 11 Feb 2016 11:25:14 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-qg0-x243.google.com (mail-qg0-x243.google.com. [2607:f8b0:400d:c04::243])
        by gmr-mx.google.com with ESMTPS id q187si749805ywf.4.2016.02.11.11.25.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Feb 2016 11:25:14 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c04::243 as permitted sender) client-ip=2607:f8b0:400d:c04::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c04::243 as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x243.google.com with SMTP id 14so4084187qgg.3
        for <outreachy-kernel@googlegroups.com>; Thu, 11 Feb 2016 11:25:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=GeRGMtGAtjuLMKAVLF2qnVNSv+HBpSpzhSKqSiq44xs=;
        b=jUIEo4HQimEdO6Vfdi2GTgsP87sDoZtoH2x2a8sSYsOPdNy4bhcXlR/6cMTfh1or8y
         EaCDzO9wYWQJt4qOmaMFlNkuevIjDNrAWOICTwMl/0tLXf2mSLd9ycHb9qwqt4sXDBLL
         BgKqr/502xk79pJsE1FWo9jqQJtXeeKouq/h/+QF8xWBoRvHnqAtoRqDK+0hUvGo+82T
         LI/syoT90E1z7aZkhnqQtKIcZEkGbpqOLB7yvid8dUVNkiBJ85SgF/B3D+BldJK1eZRD
         Chi4y4zh1Tvd64qXh+NJ/Cqj2hifGVXI79secBAk3f7g8tctl4ccQDyY2gYgiVyENncR
         GlIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=GeRGMtGAtjuLMKAVLF2qnVNSv+HBpSpzhSKqSiq44xs=;
        b=QRwYl1PjOvvkb8ghNB6PcoprpDDeYSInwP43/azm4qcir3n6N5e77lE7jh43P2qTpV
         A5e+U03c+jf9gT3HymbyvE1CDWMqvc1Aj/j6W+P+yt0xguHr7cB6OgEXI9LJmCe9GF3Q
         dYEeru8sU54oj0CqvRxwkqwhDnxKFjUd3fftpk5GAs4Pi2EGuwfjHbG7L71BOB94cfrE
         5wEkCFaAXpBMwxwOS5KVgyX4oo1WHyLxykypeh9IReV0XlqEe4xaOmrwWqHL4jMkTTjq
         1PppHmWgxXpr9+LzDfZU+VCEdFIQLNjPi1IExmRXyud71anGreHSAmtkSg8MGtz6xHB3
         G9yA==
X-Gm-Message-State: AG10YOThkoNCstz1zCvi4PtyCbrTM4Zn2TyfzyKOWkcbhToYCgP6raTbYGNooB/zAG4Ytw==
X-Received: by 10.140.95.119 with SMTP id h110mr58384618qge.105.1455218714393;
        Thu, 11 Feb 2016 11:25:14 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id t10sm1638607qhc.13.2016.02.11.11.25.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Feb 2016 11:25:13 -0800 (PST)
Date: Thu, 11 Feb 2016 19:24:35 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: goldfish: Remove unneeded parentheses in
 assignment
Message-ID: <20160212002435.GA5778@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Remove parentheses around the right hand side of assignments as they are
not needed. Semantic patch used:

@@
expression a, b, c;
@@

(
  a = (b == c)
|
  a =
- (
  b
- )
)

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
Changes since v1:
 *Lined up the expression on the right hand side in one of the
 assignment statements modified.
 
 drivers/staging/goldfish/goldfish_audio.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/goldfish/goldfish_audio.c b/drivers/staging/goldfish/goldfish_audio.c
index f1e1838..eea7bbf 100644
--- a/drivers/staging/goldfish/goldfish_audio.c
+++ b/drivers/staging/goldfish/goldfish_audio.c
@@ -122,7 +122,7 @@ static ssize_t goldfish_audio_read(struct file *fp, char __user *buf,
 		return -ENODEV;
 
 	while (count > 0) {
-		length = (count > READ_BUFFER_SIZE ? READ_BUFFER_SIZE : count);
+		length = count > READ_BUFFER_SIZE ? READ_BUFFER_SIZE : count;
 		AUDIO_WRITE(data, AUDIO_START_READ, length);
 
 		wait_event_interruptible(data->wait, data->buffer_status &
@@ -197,8 +197,8 @@ static int goldfish_audio_open(struct inode *ip, struct file *fp)
 
 	if (atomic_inc_return(&open_count) == 1) {
 		fp->private_data = audio_data;
-		audio_data->buffer_status = (AUDIO_INT_WRITE_BUFFER_1_EMPTY |
-					     AUDIO_INT_WRITE_BUFFER_2_EMPTY);
+		audio_data->buffer_status = AUDIO_INT_WRITE_BUFFER_1_EMPTY |
+					     AUDIO_INT_WRITE_BUFFER_2_EMPTY;
 		AUDIO_WRITE(audio_data, AUDIO_INT_ENABLE, AUDIO_INT_MASK);
 		return 0;
 	}
-- 
2.5.0


