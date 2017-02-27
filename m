X-GM-THRID: 6391810462293426176
X-Received: by 10.99.105.5 with SMTP id e5mr6384102pgc.0.1488211308339;
        Mon, 27 Feb 2017 08:01:48 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.141.19 with SMTP id p19ls3069294iod.9.gmail; Mon, 27 Feb
 2017 08:01:47 -0800 (PST)
X-Received: by 10.98.9.141 with SMTP id 13mr4170447pfj.10.1488211307599;
        Mon, 27 Feb 2017 08:01:47 -0800 (PST)
Return-Path: <sreyamittal5@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id h79si515252pfh.2.2017.02.27.08.01.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Feb 2017 08:01:47 -0800 (PST)
Received-SPF: pass (google.com: domain of sreyamittal5@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of sreyamittal5@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=sreyamittal5@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id 1so1481842pgz.2
        for <outreachy-kernel@googlegroups.com>; Mon, 27 Feb 2017 08:01:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=UCMSTKpx7GMXhd2n7uaHhcGUwXipqvJmcQ2U0wHK/Cs=;
        b=YFc4GP03irAp6bQTcrxgXRYJT2DbKX1joN+wCA9ZE31iAcfbX+MsqHCqF7hhybZ3uT
         /RODRJ3gCWyeapCHSLvWGICu0jGQQJtXsTRj+ofM1U8aL+IFLzeIIZSZ9G8Pxm63cFx4
         Qd1oV1qTRHIfAUZf/zcKlkhnWuOhYVEoqaBjhekpyIN542vykBl7Vq9aR7QZyZ1hr+LS
         lsihwVwiXvRDcpIEm4tsd7pkphenRXPRqe8e6GYf0m7f2gyxO7srUdnm3NYHqF31tp+M
         JK129R4+eJPZR+hRNRm6AGvaeh7eSnUIxEYhtqKAWBrpdTZOg2oFK+lb0g+H5KDMOlmv
         jzrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=UCMSTKpx7GMXhd2n7uaHhcGUwXipqvJmcQ2U0wHK/Cs=;
        b=NW7iW0kzT7oH9R8ITIWzg3zL+rmPC9Ei+VAH2JWQ3phWJW/1IUorTnPlsvgv4oNny5
         J6KIBRdevSLPoKB5Qk4GAOxrz7BSdOcLRbD2zckiLMeRghM2ODq3UqMQp03XU6uNGNkp
         NMtwr+GEwgPWCbbcjjX8OQnkaT7L1fFvYT1d2VlSPWihLvjZ0O6zg9jj2BrJO9TOc1JT
         60yL9NOzimCRt6KbyvHYnolOgBLKaJeOawfPjLCllJ6+hcwKDi7QH4SnGwl7Q1yEaVU3
         9JwbYdCBopv85aq5c9iR9zgKQu9/DokYxVAujtXkOKKTMg4kLnY1uh5LRfQ0yys9gMbF
         yK7Q==
X-Gm-Message-State: AMke39ljyj7+41ys+jj7a/HycgwZqZ1A0/xyak4uP9TY8xTCU9VVUZpESXyQTzw/61siIA==
X-Received: by 10.99.253.5 with SMTP id d5mr21603814pgh.47.1488211307379;
        Mon, 27 Feb 2017 08:01:47 -0800 (PST)
Return-Path: <sreyamittal5@gmail.com>
Received: from stayawesome ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id u129sm31414988pfb.130.2017.02.27.08.01.46
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 27 Feb 2017 08:01:46 -0800 (PST)
From: Sreya Mittal <sreyamittal5@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Sreya Mittal <sreyamittal5@gmail.com>,
	William Hubbs <w.d.hubbs@gmail.com>,
	Chris Brannon <chris@the-brannons.com>,
	Kirk Reiser <kirk@reisers.ca>,
	Samuel Thibault <samuel.thibault@ens-lyon.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 1/2] staging: speakup: Clean up parentheses
Date: Mon, 27 Feb 2017 21:31:36 +0530
Message-Id: <20170227160136.22661-1-sreyamittal5@gmail.com>
X-Mailer: git-send-email 2.9.3

Align next line of print statements
to the right of open parentheses and
remove extra parentheses.

Signed-off-by: Sreya Mittal <sreyamittal5@gmail.com>
---
 drivers/staging/speakup/keyhelp.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/speakup/keyhelp.c b/drivers/staging/speakup/keyhelp.c
index ce94cb1..c373762 100644
--- a/drivers/staging/speakup/keyhelp.c
+++ b/drivers/staging/speakup/keyhelp.c
@@ -115,9 +115,9 @@ static void say_key(int key)
 		if (state & masks[i])
 			synth_printf(" %s", spk_msg_get(MSG_STATES_START + i));
 	}
-	if ((key > 0) && (key <= num_key_names))
+	if (key > 0 && key <= num_key_names)
 		synth_printf(" %s\n",
-				spk_msg_get(MSG_KEYNAMES_START + (key - 1)));
+			     spk_msg_get(MSG_KEYNAMES_START + (key - 1)));
 }
 
 static int help_init(void)
@@ -164,7 +164,7 @@ int spk_handle_help(struct vc_data *vc, u_char type, u_char ch, u_short key)
 		cur_item = letter_offsets[ch - 'a'];
 	} else if (type == KT_CUR) {
 		if (ch == 0
-		    && (MSG_FUNCNAMES_START + cur_item + 1) <=
+		    && MSG_FUNCNAMES_START + cur_item + 1 <=
 		    MSG_FUNCNAMES_END)
 			cur_item++;
 		else if (ch == 3 && cur_item > 0)
@@ -180,9 +180,9 @@ int spk_handle_help(struct vc_data *vc, u_char type, u_char ch, u_short key)
 		return 1;
 	} else {
 		name = NULL;
-		if ((type != KT_SPKUP) && (key > 0) && (key <= num_key_names)) {
+		if (type != KT_SPKUP && key > 0 && key <= num_key_names) {
 			synth_printf("%s\n",
-				spk_msg_get(MSG_KEYNAMES_START + key - 1));
+				     spk_msg_get(MSG_KEYNAMES_START + key - 1));
 			return 1;
 		}
 		for (i = 0; funcvals[i] != 0 && !name; i++) {
-- 
2.9.3


