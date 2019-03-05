X-GM-THRID: 6664928075702075392
X-Received: by 2002:a17:906:938b:: with SMTP id l11mr159318ejx.8.1551799493391;
        Tue, 05 Mar 2019 07:24:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:358c:: with SMTP id o12ls2372200ejb.0.gmail; Tue, 05
 Mar 2019 07:24:52 -0800 (PST)
X-Google-Smtp-Source: APXvYqzpd33hKALfeD1HIZB3PKuKw0xJEhGqIHB1jkqZWARcDqT4L1gy+SZNd4iIAjxtWfcZqxno
X-Received: by 2002:a17:906:16c6:: with SMTP id t6mr161905ejd.6.1551799492545;
        Tue, 05 Mar 2019 07:24:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551799492; cv=none;
        d=google.com; s=arc-20160816;
        b=VMdVGtlSYy7wN/iMRbnqv7u1i6lT8IX2cjFPzUL4BUUNDzoiwObUBMIJsRptl4ndje
         u1FFvsMI1VsWiV8qwKojaWHVCMZEsWRUDyuPRw5qfcvESnGWr5G9TFNRB67atayagpA9
         J+r14VuMHqGtGbOOqqXe+wR1VT6N1qjiyuu9ufLvVVyyNnkHy5QI5MB/7HsIILQspiFv
         lYGjyrCCsxb5Cvr0J+X1qqFizttjy/ez4FXpFn4Z2yNke+QmeQHQn3NVI8ISZd5X1ibV
         h9Wg+wj8xC7ptxLp2fZ828RMZC3MWeci/0bl4pO8kinck6hf+NJHi5QG3EOYwgG35b0b
         zBPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature;
        bh=MIN+aln9kL1cmAVDHPwG5hxAmOBe86uS+xQ0EM7Rf+s=;
        b=f0tDG2THSmAyBnXaskgGGwWVf9B+sz2AFUE/qqPhRIY8CFllWNsqrECC9GUPS+54YS
         8znlNzWsGXN3/yvWsH58Q3zUjErBhKlH4M2F1YnRr5erFRmVjV+dvuMrcMl9JR2JI7l+
         6OKiZXdULi7MFOfkFjhr55orLocauuk2BcJQeTA+e8wEs+pHo4QKuV+lgciT+I5kIiT6
         TeYI8V/H5tQ3wljCIEWHUBzSLGXE0Lj1AOYPq52LTOGKxtE/ZsHpWNqHvBxOB054zJ7V
         YuHFjz2rbkAcdwWa2OjpBm0HB0q6Li9WUt/Qn3uH/TvqQhJHMvPNkiy+QxuQ3Pwlxlah
         qUUg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=A09Ekq86;
       spf=pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=daniela.mormocea@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <daniela.mormocea@gmail.com>
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id c7si343430ejx.1.2019.03.05.07.24.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Mar 2019 07:24:52 -0800 (PST)
Received-SPF: pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=A09Ekq86;
       spf=pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=daniela.mormocea@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x441.google.com with SMTP id o17so9923947wrw.3
        for <outreachy-kernel@googlegroups.com>; Tue, 05 Mar 2019 07:24:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=MIN+aln9kL1cmAVDHPwG5hxAmOBe86uS+xQ0EM7Rf+s=;
        b=A09Ekq86/VvBhlAMHZnXKi1cy+DlLziFpp73fO43akWoGpC9KHWwCh0FP2B2wWUowy
         anznoPLoIKXZrx4tBR+4wDH5O9p7tB6XJZgaguhUu6JZ6oDYWyBbGElANTaJfCME/+Me
         wjxN41b+Wg8w/KiyIJRRPRKBx6iNgTLFNAmRIj159lzXWakGmzY2eVf7NOUz3V6Wn9wr
         MJ6cyXGdQkXb1Ux1TaWkJkFwuzvpNc0fGKhLGLB5evRDRfHONYKMh/AuVt6bUgChgrCC
         Znot7N/UJMy0m6gv0ElzOGUs3O/+9ljwyR30SkCFk7MYZC5ZT+G5mfwRk3OU2JMSovQl
         4VmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=MIN+aln9kL1cmAVDHPwG5hxAmOBe86uS+xQ0EM7Rf+s=;
        b=f6JvA627HoAM4ReddXRmMWtUj0LVqAyksH9as5oQRPP6pxlNmun00x7atlJ2Fo64C5
         FN0PFlYiDOl7PNNatFx+ZSw7BhlgZUa51Fk0IgU2APqZdhB/TXKw2hnqb/kTOE+LvRS9
         eVPBjzKui8tMn2lOa9Xn9gN//2bGlSzj0hJq0JtXOGl6aD0OwxD5J6JxWsmQLsLK0Gb8
         sjjwe+EgN5/5OQQIOse80uulqDwxwqrk2ilA8/ti4zvGCT+yCdDfmfrFdxODn8P7AeCG
         00NWzyG/WraE24l9OJ00tWRPNRbh8yM9OUstZkKE3avNcp/39+x1i1AeA2KDPcBW+OYu
         XJHA==
X-Gm-Message-State: APjAAAXXDAVtZkO0kturkJHxWc+me4JbcZrVOkM7V7VXmGsVVQDAk5Ns
	blVBmL9KYkd7sGCSXzC9c+QmN+4T
X-Received: by 2002:a5d:6a88:: with SMTP id s8mr17150118wru.303.1551799491875;
        Tue, 05 Mar 2019 07:24:51 -0800 (PST)
Return-Path: <daniela.mormocea@gmail.com>
Received: from pthm ([141.85.233.103])
        by smtp.gmail.com with ESMTPSA id b4sm6112912wmj.3.2019.03.05.07.24.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 05 Mar 2019 07:24:51 -0800 (PST)
Date: Tue, 5 Mar 2019 17:24:49 +0200
From: Daniela Mormocea <daniela.mormocea@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: vboxvideo: Fix open parenthesis at the end of line
Message-ID: <20190305152449.GA21888@pthm>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix open parenthesis at the end of line
to improve readability

Signed-off-by: Daniela Mormocea <daniela.mormocea@gmail.com>
---
 drivers/staging/vboxvideo/vbox_mode.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/vboxvideo/vbox_mode.c b/drivers/staging/vboxvideo/vbox_mode.c
index c43bec4..28a2cc5 100644
--- a/drivers/staging/vboxvideo/vbox_mode.c
+++ b/drivers/staging/vboxvideo/vbox_mode.c
@@ -54,8 +54,7 @@ static void vbox_do_modeset(struct drm_crtc *crtc)
 		vbox_write_ioport(VBE_DISPI_INDEX_VIRT_WIDTH, pitch * 8 / bpp);
 		vbox_write_ioport(VBE_DISPI_INDEX_BPP, bpp);
 		vbox_write_ioport(VBE_DISPI_INDEX_ENABLE, VBE_DISPI_ENABLED);
-		vbox_write_ioport(
-			VBE_DISPI_INDEX_X_OFFSET,
+		vbox_write_ioport(VBE_DISPI_INDEX_X_OFFSET,
 			vbox_crtc->fb_offset % pitch / bpp * 8 + vbox_crtc->x);
 		vbox_write_ioport(VBE_DISPI_INDEX_Y_OFFSET,
 				  vbox_crtc->fb_offset / pitch + vbox_crtc->y);
-- 
2.7.4


