X-GM-THRID: 6528044448013615104
X-Received: by 2002:a25:2904:: with SMTP id p4-v6mr1331573ybp.57.1519931760468;
        Thu, 01 Mar 2018 11:16:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:3214:: with SMTP id y20-v6ls784982yby.8.gmail; Thu, 01
 Mar 2018 11:15:58 -0800 (PST)
X-Google-Smtp-Source: AG47ELtd05i7KKW4dZF52neKcC2TgHdF3d3si49urWa1HzSSd7LxdEc82psYG98i1TOnD0f6ZfKz
X-Received: by 2002:a25:4291:: with SMTP id p139-v6mr1333605yba.73.1519931758687;
        Thu, 01 Mar 2018 11:15:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519931758; cv=none;
        d=google.com; s=arc-20160816;
        b=ar01yE+usfc7gdhxtzAKmppgi5fdPoPwINdFPt1CVvRPWJzSMnCZlkSS3ANfSVe4qE
         wPU/JX3Sa803HnbEXUtUPC4WTmvjwVC+rxG4/sOc7Syr1YdEUqFMAwilqMiwgZ8FZPRN
         MkgqH5uMCzqwRpZvw16qNgFYwWuTZQOFWU2GX1IiYnt5VwLeQ6cy9dlj/lmM+PtATf9E
         cNK0TWwwhXjN9wXqz4ojKqb8DZ5KFEdpDVsiNgHTK+TmpsViR9HcwK//soFzGagZHzkT
         eUetWos3ZTERBXWbgxXOwYXbmgjGx1ydpSgwnxrS3HlDOfDmR6ztNQjToGur+ywsziWD
         kVAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:to:from
         :dkim-signature:arc-authentication-results;
        bh=n7eTJCM/QolDzws2nTc1kIgUMnWmX7/rL/Zea8MhCZ8=;
        b=gWpGObQKUuFoufPseM3TGuU7ldk9BCExhoJd58d5nOniNPtzMGtj/BAH88Y2Jq27Uy
         CciDRlV9W8G45WjiUBe1B+/VoTQk27qq6D9QSNhDvIN48qke30e7UWvdVF7VORabOo67
         K3xxKgM5O9RftYHezVmAx16xw4S86QU7vtf8nA7rerdezb6ArdkN7amfcrA9fiTeFQuR
         H0VEaB3PE8D9ju9AdwFtZJ+waPPBLiMXeFL4jbxtEAuPtWSljnInMMl23qQMKXvBUc8g
         UpTLZ1/QiMjtG3CzOpdJSQ3YysQ71RWJ2ZwQnXppNlFncav8mGAaP7lbCrmuNrjR58sZ
         sMkw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=R1djgc+p;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id 200-v6si241119ybd.1.2018.03.01.11.15.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Mar 2018 11:15:58 -0800 (PST)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=R1djgc+p;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-pg0-x243.google.com with SMTP id e9so2703893pgs.10
        for <outreachy-kernel@googlegroups.com>; Thu, 01 Mar 2018 11:15:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=n7eTJCM/QolDzws2nTc1kIgUMnWmX7/rL/Zea8MhCZ8=;
        b=R1djgc+plUVh8KoxlWz+W+7HDLMuwL3f8WMwFMoz2AFGLYlBJ2J+KIG0hAiMVYBLyR
         OT6rL79ga5xwM3St7uNKU9awxNZ5bWeM1eUukr8MC9hpWzOk+4vGGO6lQUvHP41yM6tc
         OR0rzrZ3lim4LRLNmBY7mo5xonJ92mq3OztU4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=n7eTJCM/QolDzws2nTc1kIgUMnWmX7/rL/Zea8MhCZ8=;
        b=gXt/o7b2DU+et+LkAoEa88kSsLA9+S0Sj6DoHglukTvygjcbOqY1g5GK8shpM0usxC
         MXANCoS4YOFgG2zr8xEsC49ugArxkwMzNsjNZLLPpt2aiyyR5dVPtq5VyEnvg8A2slvW
         Wymq2s9cwWh7MomlF2Cton8o88kEj/jk3MpYPRN8Qsx5bYeum0cgfJhy3W0UsDeEjwU4
         bCLIcSwEnsWLAlXo26bYefDROGu1L5HDcQcN+yBH5mTmqUdmUxPZuoW/6q8JMg2pEmTM
         b8o5h4758qWC/1dgTDM0UT4Txp2seT9geN/wotXLl1Dg+kW2RpuYic/upEV4XgGgqODE
         wzqg==
X-Gm-Message-State: APf1xPADLsF2cPrnZcD/rm5IOdpNT0RmGMD2BluwGLNZ5eZRfXAsZOsi
	3MZ+0B3s6NpKiHs0haaZHFLVFA==
X-Received: by 10.101.88.76 with SMTP id s12mr2313251pgr.385.1519931757845;
        Thu, 01 Mar 2018 11:15:57 -0800 (PST)
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from ashoka-ThinkCentre-E73z.internal.ashoka.edu.in ([125.22.40.140])
        by smtp.gmail.com with ESMTPSA id p16sm10333604pfd.77.2018.03.01.11.15.54
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 01 Mar 2018 11:15:57 -0800 (PST)
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
To: eric@anholt.net,
	stefan.wahren@i2se.com,
	gregkh@linuxfoundation.org,
	f.fainelli@gmail.com,
	rjui@broadcom.com,
	sbranden@broadcom.com,
	bcm-kernel-feedback-list@broadcom.com,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2] staging: vc04_services: bcm2835-camera: Add blank line
Date: Fri,  2 Mar 2018 00:45:48 +0530
Message-Id: <1519931748-3066-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <20180301184207.GA15880@kroah.com>
References: <20180301184207.GA15880@kroah.com>

Checkpatch suggested two warnings for this file in consecutive lines: "static VCHI_CONNECTION_T *vchi_connection;" and "static VCHI_INSTANCE_T vchi_instance;". Both warnings said to add a blank line after the declaration. If checkpatch was wrong, is it okay if I submit a version 2 with a blank line only after "vchi_instance" and not below "*vchi_connection" (effectively undoing one of my commits)?

Thanking you,
Nishka Dasgupta

