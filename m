X-GM-THRID: 6948915129226362880
X-Received: by 2002:a17:90a:9512:: with SMTP id t18mr7089383pjo.44.1617957651625;
        Fri, 09 Apr 2021 01:40:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:4853:: with SMTP id x19ls3442664pgk.0.gmail; Fri, 09 Apr
 2021 01:40:50 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzXAmJ2/BIlhDUG3TGc2gMD8jgGoWpiHRdKSgQGpZ42SrmeX7PlyCwEh9NaVX/qQQY5r6Yt
X-Received: by 2002:a65:6881:: with SMTP id e1mr12357474pgt.147.1617957650388;
        Fri, 09 Apr 2021 01:40:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617957650; cv=none;
        d=google.com; s=arc-20160816;
        b=EzhCvkd6HJyF1Bofty1g/67o6rKVv1VcanKCPpEapEPz9hujBmGAElIom2jm6b3P4U
         tW//W0qhNPu6gR5UNZ2xFYRi28gPic2ZsWnKgRB3jGq+rFOWpVTXxQqvDMUhk2erBFgj
         0+P29IqK88MDGr47txEJ3Ue+QWckk+L5DSu9k90+Cwhgg0OB9aAk+RwZcykoU6KePszj
         DSIWm8dI8ikAIODqFpeAAy+MweRFZQe7/6B0c8dS6kTfIIznDLnLN5Qj6gTDhzBg2Z7c
         lr+w6E4zYMsvLtj/K38XqqpzGtusB/AAuhyTkytF5c4GHp+CuTwA2adjnor4StY1ODLt
         SMtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=blfy5vvuMSTUWuKj3yl12/sZd7QJUFw3VhnlKGjSW+4=;
        b=fl4BBrtx9aT0ZInM+Zv8Cy/P5alXYtL3mp3cclEt1UkO6tqaogfQO2ZllTx2a8nDoO
         iqgYPJEkjV/U+rxtJLhCnJJuGVpeVX3dxG+LIs9lZOc7sAsOhLfYKWwXbckN0KYTjbRN
         VhMgb6raesFq4EUMesLEADOot/jgkj04CwsmhDN38Znam1HtakBy6NRrOy+mTaxQBju3
         orou26Fv9EmTG8gIlXjS1PoTPFLsB+MbyB+C99TO3762Gvwjtx+WTkZMJo7cPpyPZSdE
         SmIfwmhEeOqF35gxkRG/uEATXUOOtgUB5kTa+Eu4Cm7CoQlaL+nzJ26stwSPkf3MHJN4
         3okA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.170 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Return-Path: <joe@perches.com>
Received: from smtprelay.hostedemail.com (smtprelay0170.hostedemail.com. [216.40.44.170])
        by gmr-mx.google.com with ESMTPS id r2si126870pjd.1.2021.04.09.01.40.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Apr 2021 01:40:50 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.170 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.170;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.170 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from omf17.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay07.hostedemail.com (Postfix) with ESMTP id 1E804181CB2D4;
	Fri,  9 Apr 2021 08:40:49 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: joe@perches.com) by omf17.hostedemail.com (Postfix) with ESMTPA id E63D027DD11;
	Fri,  9 Apr 2021 08:40:46 +0000 (UTC)
Message-ID: <05802da66d3751611b85eb63d566220e09ef4bb7.camel@perches.com>
Subject: Re: [PATCH] staging: media: meson: vdec: matched alignment with
 parenthesis
From: Joe Perches <joe@perches.com>
To: Hans Verkuil <hverkuil@xs4all.nl>, Mitali Borkar
 <mitaliborkar810@gmail.com>,  narmstrong@baylibre.com, mchehab@kernel.org,
 gregkh@linuxfoundation.org,  khilman@baylibre.com, jbrunet@baylibre.com,
 martin.blumenstingl@googlemail.com
Cc: linux-media@vger.kernel.org, linux-staging@lists.linux.dev, 
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com, 
	mitali_s@me.iitr.ac.in
Date: Fri, 09 Apr 2021 01:40:45 -0700
In-Reply-To: <479be6a4-2e6f-98a6-045f-d7c2132137c4@xs4all.nl>
References: <YG+Bcqxetfj98l6V@kali>
	 <479be6a4-2e6f-98a6-045f-d7c2132137c4@xs4all.nl>
Content-Type: text/plain; charset="ISO-8859-1"
User-Agent: Evolution 3.38.1-1 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=1.60
X-Stat-Signature: 3wzrfrdy5sxkqd6b68tqw46b31ozb1s4
X-Rspamd-Server: rspamout05
X-Rspamd-Queue-Id: E63D027DD11
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Session-ID: U2FsdGVkX186Cki4iz9kgGIdAcl84qUVMxED1MeG/h8=
X-HE-Tag: 1617957646-625853

On Fri, 2021-04-09 at 09:30 +0200, Hans Verkuil wrote:
> On 09/04/2021 00:19, Mitali Borkar wrote:
> > Matched alignment with open parenthesis to meet linux kernel coding
> > style.
> > Reported by checkpatch
> > 
> > Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
> > ---
> > �drivers/staging/media/meson/vdec/codec_mpeg12.c | 2 +-
> > �1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/staging/media/meson/vdec/codec_mpeg12.c b/drivers/staging/media/meson/vdec/codec_mpeg12.c
> > index 48869cc3d973..21e93a13356c 100644
> > --- a/drivers/staging/media/meson/vdec/codec_mpeg12.c
> > +++ b/drivers/staging/media/meson/vdec/codec_mpeg12.c
> > @@ -81,7 +81,7 @@ static int codec_mpeg12_start(struct amvdec_session *sess)
> > �	}
> > �
> > 
> > �	ret = amvdec_set_canvases(sess, (u32[]){ AV_SCRATCH_0, 0 },
> > -					(u32[]){ 8, 0 });
> > +				  (u32[]){ 8, 0 });
> 
> The alignment here is because the 2nd and 3rd arguments belong together, so
> the alignment indicates that. In order to keep that I would add a newline
> after 'sess,' as well. Same as is done in meson/vdec/codec_h264.c.

Perhaps better as:

---
 drivers/staging/media/meson/vdec/codec_mpeg12.c | 5 +++--
 drivers/staging/media/meson/vdec/vdec_helpers.c | 2 +-
 drivers/staging/media/meson/vdec/vdec_helpers.h | 2 +-
 3 files changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/media/meson/vdec/codec_mpeg12.c b/drivers/staging/media/meson/vdec/codec_mpeg12.c
index 48869cc3d973..933f1cd16ce1 100644
--- a/drivers/staging/media/meson/vdec/codec_mpeg12.c
+++ b/drivers/staging/media/meson/vdec/codec_mpeg12.c
@@ -65,6 +65,8 @@ static int codec_mpeg12_start(struct amvdec_session *sess)
 	struct amvdec_core *core = sess->core;
 	struct codec_mpeg12 *mpeg12;
 	int ret;
+	static const u32 canvas1[] = { AV_SCRATCH_0, 0 };
+	static const u32 canvas2[] = { 8, 0 };
 
 	mpeg12 = kzalloc(sizeof(*mpeg12), GFP_KERNEL);
 	if (!mpeg12)
@@ -80,8 +82,7 @@ static int codec_mpeg12_start(struct amvdec_session *sess)
 		goto free_mpeg12;
 	}
 
-	ret = amvdec_set_canvases(sess, (u32[]){ AV_SCRATCH_0, 0 },
-					(u32[]){ 8, 0 });
+	ret = amvdec_set_canvases(sess, canvas1, canvas2);
 	if (ret)
 		goto free_workspace;
 
diff --git a/drivers/staging/media/meson/vdec/vdec_helpers.c b/drivers/staging/media/meson/vdec/vdec_helpers.c
index 7f07a9175815..df5c27266c44 100644
--- a/drivers/staging/media/meson/vdec/vdec_helpers.c
+++ b/drivers/staging/media/meson/vdec/vdec_helpers.c
@@ -177,7 +177,7 @@ static int set_canvas_nv12m(struct amvdec_session *sess,
 }
 
 int amvdec_set_canvases(struct amvdec_session *sess,
-			u32 reg_base[], u32 reg_num[])
+			const u32 reg_base[], const u32 reg_num[])
 {
 	struct v4l2_m2m_buffer *buf;
 	u32 pixfmt = sess->pixfmt_cap;
diff --git a/drivers/staging/media/meson/vdec/vdec_helpers.h b/drivers/staging/media/meson/vdec/vdec_helpers.h
index cfaed52ab526..ace8897c34fe 100644
--- a/drivers/staging/media/meson/vdec/vdec_helpers.h
+++ b/drivers/staging/media/meson/vdec/vdec_helpers.h
@@ -17,7 +17,7 @@
  * @reg_num: number of contiguous registers after each reg_base (including it)
  */
 int amvdec_set_canvases(struct amvdec_session *sess,
-			u32 reg_base[], u32 reg_num[]);
+			const u32 reg_base[], const u32 reg_num[]);
 
 /* Helpers to read/write to the various IPs (DOS, PARSER) */
 u32 amvdec_read_dos(struct amvdec_core *core, u32 reg);


