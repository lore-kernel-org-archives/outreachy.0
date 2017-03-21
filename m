X-GM-THRID: 6399866946348646400
X-Received: by 10.129.108.146 with SMTP id h140mr9061816ywc.4.1490085145444;
        Tue, 21 Mar 2017 01:32:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.39.226 with SMTP id c89ls1308198otb.2.gmail; Tue, 21 Mar
 2017 01:32:25 -0700 (PDT)
X-Received: by 10.157.41.240 with SMTP id g45mr14348138otd.94.1490085145146;
        Tue, 21 Mar 2017 01:32:25 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id g82si3179190pfb.5.2017.03.21.01.32.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Mar 2017 01:32:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id r137so17190957pfr.3
        for <outreachy-kernel@googlegroups.com>; Tue, 21 Mar 2017 01:32:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=r+y5x5rJrKgzSQgYnwxDrsICJpiQNYPH7aqSuIaJwfs=;
        b=eXULdtMI8Gcj6+wTdDQHlO2tL3hPK6hwVvL0ZsANzNtYFGYdVBR0XWhelYVY2L0Sxu
         D8B+D16uP+uYwuaJGFv6HymfmWLcLt/IlYKRkvr3m24ehUu84bc9oqMLAWqg/q+05IVE
         YE/N9u+KVKTDXduTC++uE1YkzdYAQpSpd601S9ar/YSoB/+FGkQtAbeNRJrrCOKZu5bU
         9/d5FZn6GegFTsQa5UpJ+ZVQb6Tm61mTP05Yal6WY+i7UHjkEQgcnkHT7FGjCLFcqfZB
         6I/5qYw+E9SrTUgnnR3uPUExTljc+qTrhKacTT2V7b+ajJ1xzoHZ8co4bn2MZewsLBF+
         oSwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=r+y5x5rJrKgzSQgYnwxDrsICJpiQNYPH7aqSuIaJwfs=;
        b=UU3XMLQ4JNHsCvxDu75dVrNJWiDZrifpaliQVb4y9W2MGfvJupRDELt8j5sUxvVPkU
         aKm56aoGSWZrx1ChgzMPY8R0m4ZM3/gPxUPjc6owAhNMqEEGaZyolx8pBWFjRyFbnlpI
         2s+MBOKE//4GIZBcyORGNYCbYC0lYkHhPv8S+62n6ake6CozddmQaMYTqMqcYmPsXepL
         +P5rR3dfXXBp04vhfCdfkXqt28AhUNVwGuw5b81vmM2FFC0WF5cEewmD3sXe8lxCHnsj
         /tJghO32SDJ/kr0CergmQzGnXIjzW6nC+6XmwTXgivVFoXuR28n/oL59WtXo6LfZFokx
         CliA==
X-Gm-Message-State: AFeK/H1KF4ZbIrtgIG7U21l6++8dqyj3ElFGVFKMkWVh15iVrIqQK9oKbSWKpQaaGCP4TA==
X-Received: by 10.98.26.199 with SMTP id a190mr38860383pfa.63.1490085144923;
        Tue, 21 Mar 2017 01:32:24 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id l1sm18687563pfk.8.2017.03.21.01.32.23
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 21 Mar 2017 01:32:23 -0700 (PDT)
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: w.d.hubbs@gmail.com
Cc: chris@the-brannons.com,
	outreachy-kernel@googlegroups.com,
	kirk@reisers.ca,
	samuel.thibault@ens-lyon.org,
	gregkh@linuxfoundation.org,
	speakup@linux-speakup.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	Arushi Singhal <arushisinghal19971997@gmail.com>
Subject: [PATCH 1/4] staging: speakup: Removed Unnecessary parentheses.
Date: Tue, 21 Mar 2017 14:02:12 +0530
Message-Id: <20170321083215.29209-2-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170321083215.29209-1-arushisinghal19971997@gmail.com>
References: <20170321083215.29209-1-arushisinghal19971997@gmail.com>

Unnecessary parentheses are removed to improve readability.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 drivers/staging/speakup/kobjects.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/speakup/kobjects.c b/drivers/staging/speakup/kobjects.c
index afb61e153592..ca85476e3ff7 100644
--- a/drivers/staging/speakup/kobjects.c
+++ b/drivers/staging/speakup/kobjects.c
@@ -392,7 +392,7 @@ static ssize_t synth_store(struct kobject *kobj, struct kobj_attribute *attr,
 		len--;
 	new_synth_name[len] = '\0';
 	spk_strlwr(new_synth_name);
-	if (synth && (!strcmp(new_synth_name, synth->name))) {
+	if (synth && !strcmp(new_synth_name, synth->name)) {
 		pr_warn("%s already in use\n", new_synth_name);
 	} else if (synth_init(new_synth_name) != 0) {
 		pr_warn("failed to init synth %s\n", new_synth_name);
-- 
2.11.0


