X-GM-THRID: 6470360627233685504
X-Received: by 10.28.154.68 with SMTP id c65mr71715wme.5.1506498229395;
        Wed, 27 Sep 2017 00:43:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.23.21 with SMTP id l21ls179445lje.3.gmail; Wed, 27 Sep 2017
 00:43:48 -0700 (PDT)
X-Received: by 10.46.88.72 with SMTP id x8mr56537ljd.6.1506498228119;
        Wed, 27 Sep 2017 00:43:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506498228; cv=none;
        d=google.com; s=arc-20160816;
        b=ZkvDy8H10R0p+7vfTj7qF7VnPweVW5j/d8sHIvelcUrI8fE67x7fjakWhfpWtohIRk
         BCkUHT1C94cEn4dMZxP7RQqHRcfiKEL9VA6ZS8GGMwk4j9h7vSPbkIitjkYuf/mRnhI9
         VFa72/F/V+j0/2a5Mib8V50Con4qr/PaDzIcDbz9boRKnnNF5fQume7uJTNv5F9YOgoh
         j789HBHQx1iI60w7h1hXzxVh0yafWKztEA/i2TfpgjtWMwOYzLSCk9fWU7RtJ2K91ssu
         kxF8iHSK+bZ5uO91aC58YQPDJLZCKenpUUJuExZPblXtxKok1j3L+G89VQyFhFQp6MZn
         GQ1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=DbaaP0akSltqq/05jc0wWMIG/gsqrN85vXqgv7IcQhU=;
        b=Ep9Ee9Kg0UZ4+gEo+dvCt7hHIThXIlTGjfdyh/aBz2dEHZzbjnHeHgVdGlEiU4bA+2
         thWw9f0PW0rM9ZCvlUFMdSR577tWkl3p8s2s1VWFum+AQdJvVEdoL/Kv5NHYIbxo5bb0
         J5ygQ2X69/mIaDaMN0lvy2NNW8TZuDywzt4GiomQ5Pyn9uHkMLbTF6jjY2fkOJXI5+AZ
         jmATfk+ChHOGsoNU0+7BRj+a6AB/M85Z5R4vJ6g4RA4gval+XSncePuUFAq+kXlDR5ia
         05Ir3LFp5Ns9GqnVE0h0uYQZ4V9t4kTsa9J+PXoLOTenZVCUEhSIZ+sAaUp1HUrw54sW
         yHGQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=o7BdAktm;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c0c::242 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <mihaela.muraru21@gmail.com>
Received: from mail-wr0-x242.google.com (mail-wr0-x242.google.com. [2a00:1450:400c:c0c::242])
        by gmr-mx.google.com with ESMTPS id b203si203577wmh.4.2017.09.27.00.43.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Sep 2017 00:43:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c0c::242 as permitted sender) client-ip=2a00:1450:400c:c0c::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=o7BdAktm;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c0c::242 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x242.google.com with SMTP id n64so3671410wrb.2
        for <outreachy-kernel@googlegroups.com>; Wed, 27 Sep 2017 00:43:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=DbaaP0akSltqq/05jc0wWMIG/gsqrN85vXqgv7IcQhU=;
        b=o7BdAktmcORWYa7ItWhuKOBkdcda6uN3fTHo0DXmIvRb/seaTSb90vMs3kQUqgFnGe
         SS1JGIkbOwqT8VJgQR+bdERxZ9vBYUiQPusCXQdxvwlb6OtO6Hf548fQa3ULbi4b3pfn
         rDxsVHT+kNpB0N/IyXZHgCbgo68RcwHqW8N0IA7xGe8STdMWY9Lsa/Wj1JnZAWr5pA/t
         hyFjvwhUJ3NT2JTGbQNLZ2/65DShd4eTOIXszbLDt3bJKwbWiiBibgHBKEAxjH17WoQh
         JjaBtE+a8w8wu3RG5OL0d1aq1ej2NFtrmzASrhFi/HaHqbQxc0b8/+CkBZMJz6wntAEc
         UtYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=DbaaP0akSltqq/05jc0wWMIG/gsqrN85vXqgv7IcQhU=;
        b=CVZlcbIjE31ZDohETYGxhCm1YF/te7Rc1Mc3wiy8QfYTObv3tzqjXr45+hztQL867r
         FLJClJE6o9H895L15M7FIeMjH0AfCKB/7Nc5EpaUCs3pjevogfdMMZLqEO5r89IR/eRu
         569uiE9bJjcGocg/sjlIhl7/dvFbRBoqYrYVPqLx+cJUj11ltCCczeheIaeiB30YK1Nm
         1UdnpS0jG8Stu7ZPZ/68xy2jA4RwAr1SmaaZsmublBkfOCzptA2ZzlG0eBw2/5k22XPs
         PcdDG8/HoqRU3lH9ACOFVyuR41xO5qLWSvBJXvy1bAptGIFyELSsCvne7j0gqP05/d3v
         Gyng==
X-Gm-Message-State: AHPjjUjQp1AsqJ5F7K+/+CXFCqoNpSkDGrVOCUg0BKO1Egp+KMBfXxZg
	IVw4KyciRrC1bJPZWkp9iz4=
X-Google-Smtp-Source: AOwi7QBddb++NBu5TDLlHB/i2yJa/MZERbXOUmUksgNyPhiKqAmFKbG+BkxKC3aSCtH/K1tjCH0HQg==
X-Received: by 10.223.182.71 with SMTP id i7mr513498wre.43.1506498227712;
        Wed, 27 Sep 2017 00:43:47 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from ubuntu (fw-ext-11.romania.luxoft.com. [195.90.110.113])
        by smtp.gmail.com with ESMTPSA id i7sm2759184wmc.18.2017.09.27.00.43.46
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 27 Sep 2017 00:43:47 -0700 (PDT)
Date: Wed, 27 Sep 2017 00:43:45 -0700
From: Mihaela Muraru <mihaela.muraru21@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	William Hubbs <w.d.hubbs@gmail.com>
Subject: [PATCH] staging: speakup: Fix comment block coding style
Message-ID: <20170927074345.GA46087@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This is a patch to the spk_ttyio.c file that fix up a comment block
warninig, found by checkpatch.pl tool, by adding */ on a separte line.

WARNING: Block comments use a trailing */ on a separate line

Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>
---
 drivers/staging/speakup/spk_ttyio.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/speakup/spk_ttyio.c b/drivers/staging/speakup/spk_ttyio.c
index a6330e2..513cebb 100644
--- a/drivers/staging/speakup/spk_ttyio.c
+++ b/drivers/staging/speakup/spk_ttyio.c
@@ -88,7 +88,8 @@ static int spk_ttyio_receive_buf2(struct tty_struct *tty,
 		return 0;
 
 	/* Make sure the consumer has read buf before we have seen
-	 * buf_free == true and overwrite buf */
+	 * buf_free == true and overwrite buf
+	 */
 	mb();
 
 	ldisc_data->buf = cp[0];
@@ -274,7 +275,8 @@ static unsigned char ttyio_in(int timeout)
 
 	rv = ldisc_data->buf;
 	/* Make sure we have read buf before we set buf_free to let
-	 * the producer overwrite it */
+	 * the producer overwrite it
+	 */
 	mb();
 	ldisc_data->buf_free = true;
 	/* Let TTY push more characters */
-- 
2.7.4


