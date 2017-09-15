X-GM-THRID: 6465879632669310976
X-Received: by 10.99.143.69 with SMTP id r5mr14711808pgn.10.1505457545277;
        Thu, 14 Sep 2017 23:39:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.33.214 with SMTP id e205ls556521ita.5.canary-gmail; Thu, 14
 Sep 2017 23:39:04 -0700 (PDT)
X-Received: by 10.107.162.83 with SMTP id l80mr2391596ioe.133.1505457544790;
        Thu, 14 Sep 2017 23:39:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505457544; cv=none;
        d=google.com; s=arc-20160816;
        b=VuY4bYMAuGb+dVFW/BafGOvPcDT3DXSFTw9PbZtXirJuDFi1eb3egfTOMeYHUrVHey
         MNNkSHmRJQ0uTqwvs5Qb8WY3MKV8HpCPj54/f3r5kXAo4BxJSvpf30dU+mSpjI19ESU7
         S254VhOrLBx6paxHhYdOXtbChpDoKqk2gCQxZN8PEAv6jlPIOodew0SeVM4PsIuuXvuV
         DTedQR4iG9iIbXR//63GBdaxfH4+Wp/INDOyZIOmqYX6zZILpBUy+bMz4aLUdHGIjcLa
         FXS4KJwVVGZGbw07yiP0qCZPNQBtxUiM9tpj96p0K1dw7GQqj8N/KerzFw0OhmVieph0
         o57A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature:arc-authentication-results;
        bh=e2LfbdTn/6sF9GDnReFZUh45ywZ2AM+edL1+VKae/nk=;
        b=0GqEyuthm4QxsAYql+wClst9TQgP5CCL9t+qc2O+bqu99ZEv3KNWpAPl+/KqtbFcf9
         4Kv7P02oY+4U+BsaATjl1GnJYxjAiXylYOlUIKKiaANadm+I66+2YUC2kFMoBfNL6KJE
         VlCjoh1YC/hyb8MFEHVuuomcEsaiYXxmY67dEKDlnRFKLwvnBk+1KU0o1bYD9W5Py+ym
         cqGy/cZfWwuNpaGUjUxI9i+XmMvWCvHVUopRcAOgIAVKOeZOAvdQX2SG1Z2vhXoQzhpX
         tDLt8EmOe1OgZW4aOruYQUoaSCvS/XdUX31BgX9h8vQ+7SRykIbK1cHtNb+NN4xa3m//
         7rhQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Dh3s9ZuK;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id u184si18049pfb.17.2017.09.14.23.39.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Sep 2017 23:39:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Dh3s9ZuK;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id m30so880950pgn.5
        for <outreachy-kernel@googlegroups.com>; Thu, 14 Sep 2017 23:39:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=e2LfbdTn/6sF9GDnReFZUh45ywZ2AM+edL1+VKae/nk=;
        b=Dh3s9ZuKMIG8rNzRDAgmdNr11W8Idkf/BHTWHOHbIvlwn4gSFeVv3fYRqqBMYGS/Mx
         sCWIVh8YGusWTv9264NOHGLvXUrpPn02eLc7TTg77AkMdXwwH71O4r/f0dbyM9zZq6Ho
         4exhZsjMJ8snuTHuupW89jG/HeQlnE5+Kgi4/Y/g3HtE1AmGdl6iI1X+OK8/JBkgFVVZ
         zSKjNWFzPEWnkqNwsvc9GauAFqYPGymJNyJgUTrOP0zls932wGTh+9QfhnITNdkHeoOW
         9RbPHiwFjqJuBErSfS64f2AH/nyyWXLP0d/uYU3n5f26Ixnby7g3mntnVShLyh7Ajtek
         Np/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=e2LfbdTn/6sF9GDnReFZUh45ywZ2AM+edL1+VKae/nk=;
        b=S4XZ0vGC96YAckZfbovKWP8NnZTB6mkNbIcIh6CTqeznUqzZz0/DyjOM9X+6MjRlXj
         hgfgkylIIiEQ+F7b1R+J9tiZ2FYebqjlKuygM9xM4GPn4roupePsLJLg6smXuYUy3L6b
         /9PUNudxZY5uHSeczWc+zMeuyf6vHT9OROYurjDxCXiIl6/JSEH/82Via/ssyS7Yedvs
         EdOQdDv1etm4SupEQ7c0dn/fShQ5H6JbSpPgXEU6KjZeQQZ5Y87Hw8z6tk592KG4IAZI
         4c8GtYNmELzRjMLHP0KQmnfZXV+kWqbuZjFwV3npan3Xz+uZo6trzACbGfrn5UVXKTGt
         p7iA==
X-Gm-Message-State: AHPjjUjwlWExOKunV15P10Fj2MuTw5zW8huIQqZk9cR9pOjpv001Fesh
	X6/7n7PdAabZ8Q==
X-Google-Smtp-Source: ADKCNb7TJPEU8LdPwvGBlIEfo8DQmrQkhsuXwfmC4DCadLee2JFbSQpl2zL3EF64D9ed9/QQrL8irQ==
X-Received: by 10.99.113.93 with SMTP id b29mr24138047pgn.422.1505457544532;
        Thu, 14 Sep 2017 23:39:04 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([171.78.243.118])
        by smtp.gmail.com with ESMTPSA id k195sm673768pgc.4.2017.09.14.23.39.03
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 14 Sep 2017 23:39:04 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH v2 8/8] staging: lustre: ldlm: fix lines over 80 characters in ldlm_resource
Date: Fri, 15 Sep 2017 12:08:23 +0530
Message-Id: <73906a4d8721c0af7534b67fd7bfb661bb8df82a.1505456961.git.aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1505456960.git.aastha.gupta4104@gmail.com>
References: <alpine.DEB.2.20.1709150814460.2287@hadrien>
 <cover.1505456960.git.aastha.gupta4104@gmail.com>
In-Reply-To: <cover.1505456960.git.aastha.gupta4104@gmail.com>
References: <cover.1505456960.git.aastha.gupta4104@gmail.com>

This patch fixes checkpatch.pl warning:
WARNING: line over 80 characters

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
 drivers/staging/lustre/lustre/ldlm/ldlm_resource.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_resource.c b/drivers/staging/lustre/lustre/ldlm/ldlm_resource.c
index c2ddf73..c374f14 100644
--- a/drivers/staging/lustre/lustre/ldlm/ldlm_resource.c
+++ b/drivers/staging/lustre/lustre/ldlm/ldlm_resource.c
@@ -1358,7 +1358,8 @@ void ldlm_resource_dump(int level, struct ldlm_resource *res)
 			LDLM_DEBUG_LIMIT(level, lock, "###");
 			if (!(level & D_CANTMASK) &&
 			    ++granted > ldlm_dump_granted_max) {
-				CDEBUG(level, "only dump %d granted locks to avoid DDOS.\n",
+				CDEBUG(level,
+				       "only dump %d granted locks to avoid DDOS.\n",
 				       granted);
 				break;
 			}
-- 
2.7.4


