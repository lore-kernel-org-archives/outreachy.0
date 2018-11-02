X-GM-THRID: 6619380955766325248
X-Received: by 2002:a2e:350e:: with SMTP id z14-v6mr1264395ljz.14.1541194775719;
        Fri, 02 Nov 2018 14:39:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:1fd4:: with SMTP id f203-v6ls1527003lff.14.gmail; Fri,
 02 Nov 2018 14:39:34 -0700 (PDT)
X-Google-Smtp-Source: AJdET5eT2tw6TGAJFlnctc4A8XYzLJpH0DQp9zzzyAGp2wlFgT/HURFv03MxwlZqNpslE74Or5Io
X-Received: by 2002:a19:a28f:: with SMTP id l137-v6mr1116649lfe.14.1541194774926;
        Fri, 02 Nov 2018 14:39:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1541194774; cv=pass;
        d=google.com; s=arc-20160816;
        b=OYyhG0KwblHpRjAdpBSGnOM3Or3y3eQnOmiVt8L222wVsfpMeMigtqKgerib3sIvQu
         EI4i2/fRHfnVggo9wf/Gn5Aosq+R40zOR57AFGjoSs66cSUv50HQ7+ARY/TypnzdcW3r
         0xXL+yLo6eibYg3emIAyn9co0yJq7t3UkS91drbHRxnSrIADU/Q6H+HdGCQCS+sKh7gk
         hl3awQwY4zshE8zQ4bEELgqtjRNWxKgNcAAc/2ninBWRPlpJVWlj1XfYkGTdignqf+PD
         C9vY0zrsaLXosCu18EfuRpKENBmxadN+hIwgB28OVGBK+iPJ7iOVAL4ZwAhwkQsO/+KP
         pkfA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=tPt8tsjz3XA8/8Tr3iyQP3AyNiu+Hhh0qfrbKJ3Hnkg=;
        b=gQ1s2KBDws5/fQakfPKzBqJ+Wm8y2UkmIlA6jlhafoxKa/9T+bEHw5+6bG06f7JJcm
         G0aGZBSumVtOK0y/gkvpHvJxzH9W32wSzVixZN8U9+9NHL2qmtMScvynKSxtnICYQg2j
         o3cBHVoXHRHwVijcAdAU3wpT/Hn6PMPTMD6ydgF3ZGF0H4HsqO9dDFgFd8huA2aPD8Ow
         gX0NK9MLTiSQIchYS0r/qR2Rm4zxAO+NMBlFkfprLdDo7ZRTpSZ+ygf1PBjl34sj8jUU
         Pmz/ZERnvsaHtGts4o3om5m+js4w+lPrWjIUCCZ7zmaHINFkM9txKQMCy0PZaE/3n+9b
         MRQw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=Ne1sLvbO;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id a79-v6si1080579ljf.1.2018.11.02.14.39.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Nov 2018 14:39:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=Ne1sLvbO;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541194773; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=UTwOQ+2z7yDjrC+6VpkFb6L9KjRcnd+q+4+Ni8FzuyMKpBKB5NBVurWRACHNDP8DvwhW9a955Q2xVIkziI3b2SPQKWFH8xaslfg2KOFvuonHqh7za1smOSw2U3j90ki6ENQAzJJm5Pli6p/8GRkDdZiKBxwBGfLOCshgcDzhfUI=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541194773; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=tPt8tsjz3XA8/8Tr3iyQP3AyNiu+Hhh0qfrbKJ3Hnkg=; 
	b=YndTYMe41Y6D9V79KXij8SJmsG6voxX3zhLkLrhP4aMl8TsHs5Mg/Fh4gYQ0UpaKfr45rNJcLTzYJr8FfekoPt1NbIF2IMQ9zs4MBHw0yq+ALGkMGGaaQeL7LpF8lNFL9Fuh+nSfYcweS9c00ecH2N5Ti0IWdCi/hHP78s2aYUE=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541194773;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=1036; bh=tPt8tsjz3XA8/8Tr3iyQP3AyNiu+Hhh0qfrbKJ3Hnkg=;
	b=Ne1sLvbOfLT/fMKRfKTCRMju0fR+F1KNZF/b15gPeMsVHxeke3ROjx95GVyIhDPw
	zG8qmJ+BeSXz1R0FyXArTPvaHDfly0n2GzzsjyVboUOLO2Pnx4gHV/liNdGRjoJJEzb
	NWwZoL8mr8wPmTwZG7ugxhO6y/q24XGD8RSx3ix0=
Received: from kvasir.local (90.242.56.176 [90.242.56.176]) by mx.zoho.eu
	with SMTPS id 1541194770940535.0320965844304; Fri, 2 Nov 2018 22:39:30 +0100 (CET)
Date: Fri, 2 Nov 2018 21:39:29 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v3 4/5] staging: greybus Align arguments with parentheses
Message-ID: <dbd8ad2597a0d0db49d8c6ece103a5a29ba7d139.1541194567.git.code@wizofe.uk>
References: <cover.1541194567.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1541194567.git.code@wizofe.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

Align arguments with the right side of the open left parentheses
Reported by checkpatch.

Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
---
 drivers/staging/greybus/control.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/greybus/control.h b/drivers/staging/greybus/control.h
index ebb7a2ee17dc..5a45d55349a1 100644
--- a/drivers/staging/greybus/control.h
+++ b/drivers/staging/greybus/control.h
@@ -41,7 +41,7 @@ int gb_control_get_bundle_versions(struct gb_control *control);
 int gb_control_connected_operation(struct gb_control *control, u16 cport_id);
 int gb_control_disconnected_operation(struct gb_control *control, u16 cport_id);
 int gb_control_disconnecting_operation(struct gb_control *control,
-					u16 cport_id);
+				       u16 cport_id);
 int gb_control_mode_switch_operation(struct gb_control *control);
 void gb_control_mode_switch_prepare(struct gb_control *control);
 void gb_control_mode_switch_complete(struct gb_control *control);
-- 
2.19.1


-- 
ta
ioannis


