X-GM-THRID: 6255332250518290432
X-Received: by 10.13.235.144 with SMTP id u138mr42148064ywe.21.1456433034440;
        Thu, 25 Feb 2016 12:43:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.79.232 with SMTP id m8ls328656igx.33.canary; Thu, 25 Feb
 2016 12:43:53 -0800 (PST)
X-Received: by 10.50.150.98 with SMTP id uh2mr633004igb.2.1456433033948;
        Thu, 25 Feb 2016 12:43:53 -0800 (PST)
Return-Path: <aquannie@gmail.com>
Received: from mail-pa0-x22b.google.com (mail-pa0-x22b.google.com. [2607:f8b0:400e:c03::22b])
        by gmr-mx.google.com with ESMTPS id 79si1516393pft.0.2016.02.25.12.43.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 12:43:53 -0800 (PST)
Received-SPF: pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) client-ip=2607:f8b0:400e:c03::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) smtp.mailfrom=aquannie@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22b.google.com with SMTP id ho8so39011889pac.2
        for <outreachy-kernel@googlegroups.com>; Thu, 25 Feb 2016 12:43:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=we17vk9XzytZ1ZpuEd7EC+L8RYmrzM+avF7aU18G7MA=;
        b=lwc4aI5nAVfk+5xAgm70Wwdyus7+LQibn6Oc62ouf+4LU6OVKj4EU7/Pl4uQMm8A5g
         j0mDhv4yYSbUuswKhq0E/1+LEuo+lgM39girwL9XwkB7L/fYIO1ZCG65OESnX9fg7b2b
         8CILwPmmU8nF7RGOjbb62P+Y2AuinGoboe48LKp5NuBFvkeRXbYiZ25D+bzHAngaFqAY
         8jHFJrX7Qh4g/VemYC3+a9OIVK0nl4iNSwEtGJ0AsXTRGUUEQEitNCpCSRfziNYD6Yt5
         /y7jWcaywQoDeyu6BktebSiS+uDbWmWlftTHDI/plsEPh51aEf5fapCaLOY6TKZXowPP
         OpSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=we17vk9XzytZ1ZpuEd7EC+L8RYmrzM+avF7aU18G7MA=;
        b=kj7CZvjsayvtzfqQd56u58QyQHXPUS3PbQoMzidwIe6vyA6ee1vN+okz7AEWK4s+46
         xinzQ+90ItUUN2PQnuHoDXJdniymt6PpV7IbwJgYNiDm7bUZapYK3j8NLRZkaFFOpEuS
         eLfMZV3b9LlQz5PUgUNfqTvlZSIkVnaIsmHelW0apcjbzQqcV32I9U3qq3/Z61EEtkTW
         2yMpm2RE1+PhAanwTgtR2G5tRmQaWuOoohnyUnsfM1rJO1pWvkI1WyOLyIDEwcNnrCM5
         vq9FXLvAPJc7jL1KroTqKKsaonodkxstDx21vWW1mULCmnExIUr59KBlyl3ZamqhitmB
         kLXw==
X-Gm-Message-State: AG10YOTVRK69yWT7AQ86UVHb+fUG0wJg9b3yWd5vA0j0a2YuSi5Y4ZGGBGoO3u+1aKauQw==
X-Received: by 10.66.62.195 with SMTP id a3mr66307174pas.28.1456433033799;
        Thu, 25 Feb 2016 12:43:53 -0800 (PST)
Return-Path: <aquannie@gmail.com>
Received: from Toblerone ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id r5sm14217427pap.7.2016.02.25.12.43.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1/SSLv3 cipher=OTHER);
        Thu, 25 Feb 2016 12:43:53 -0800 (PST)
Date: Fri, 26 Feb 2016 02:13:56 +0530
From: Rehas Sachdeva <aquannie@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: dgnc: Use trailing */ on separate line
Message-ID: <20160225204356.GA29816@Toblerone>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch fixes the following checkpatch.pl warning:
Block comments use a trailing */ on a separate line.

Signed-off-by: Rehas Sachdeva <aquannie@gmail.com>
---
 drivers/staging/dgnc/dgnc_tty.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/dgnc/dgnc_tty.c b/drivers/staging/dgnc/dgnc_tty.c
index f36ca8c..8a7508a 100644
--- a/drivers/staging/dgnc/dgnc_tty.c
+++ b/drivers/staging/dgnc/dgnc_tty.c
@@ -451,7 +451,8 @@ void dgnc_tty_uninit(struct dgnc_board *brd)
  *		buf	- Pointer to characters to be moved.
  *		n	- Number of characters to move.
  *
- *=======================================================================*/
+ *=======================================================================
+ */
 static void dgnc_wmove(struct channel_t *ch, char *buf, uint n)
 {
 	int	remain;
@@ -495,7 +496,8 @@ static void dgnc_wmove(struct channel_t *ch, char *buf, uint n)
  *
  *	      ch      - Pointer to channel structure.
  *
- *=======================================================================*/
+ *=======================================================================
+ */
 void dgnc_input(struct channel_t *ch)
 {
 	struct dgnc_board *bd;
-- 
2.1.4


