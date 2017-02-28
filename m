X-GM-THRID: 6390824128052461568
X-Received: by 10.36.122.149 with SMTP id a143mr6466itc.37.1488308005510;
        Tue, 28 Feb 2017 10:53:25 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.26.200 with SMTP id a191ls600688ioa.7.gmail; Tue, 28 Feb
 2017 10:53:24 -0800 (PST)
X-Received: by 10.99.210.21 with SMTP id a21mr1344108pgg.44.1488308004650;
        Tue, 28 Feb 2017 10:53:24 -0800 (PST)
Return-Path: <joe@perches.com>
Received: from smtprelay.hostedemail.com (smtprelay0165.hostedemail.com. [216.40.44.165])
        by gmr-mx.google.com with ESMTPS id n145si149266vkf.1.2017.02.28.10.53.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Feb 2017 10:53:24 -0800 (PST)
Received-SPF: neutral (google.com: 216.40.44.165 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.165;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.165 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay04.hostedemail.com (Postfix) with ESMTP id 04E043520D3;
	Tue, 28 Feb 2017 18:53:20 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,:::,RULES_HIT:2:41:69:355:379:541:599:800:960:966:973:988:989:1260:1277:1311:1313:1314:1345:1359:1373:1437:1515:1516:1518:1535:1593:1594:1605:1730:1747:1777:1792:1801:1963:2194:2196:2199:2200:2393:2553:2559:2562:2691:2828:2914:3138:3139:3140:3141:3142:3622:3865:3866:3867:3868:3871:3872:3873:4043:4050:4119:4321:4385:4605:5007:7903:8603:8957:9108:10004:10848:11026:11232:11233:11658:11914:12043:12438:12555:12683:12740:12760:12895:13161:13229:13439:14659:21060:21080:21324:21451:30012:30030:30054:30090:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:fn,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:2,LUA_SUMMARY:none
X-HE-Tag: alarm78_351f621b24
X-Filterd-Recvd-Size: 8180
Received: from XPS-9350 (unknown [47.151.132.55])
	(Authenticated sender: joe@perches.com)
	by omf08.hostedemail.com (Postfix) with ESMTPA;
	Tue, 28 Feb 2017 18:53:19 +0000 (UTC)
Message-ID: <1488307998.25838.30.camel@perches.com>
Subject: Re: [PATCH v7] staging: xgifb: correct the multiple line dereference
From: Joe Perches <joe@perches.com>
To: Arushi Singhal <arushisinghal19971997@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Date: Tue, 28 Feb 2017 10:53:18 -0800
In-Reply-To: <CA+XqjF8J2o8gwhPs6_U2TLBviTyra1pAThdbBfp7duvEzbxQWA@mail.gmail.com>
References: <20170228104507.GA30448@arushi-HP-Pavilion-Notebook>
	 <1488280264.25838.26.camel@perches.com>
	 <CA+XqjF8J2o8gwhPs6_U2TLBviTyra1pAThdbBfp7duvEzbxQWA@mail.gmail.com>
Content-Type: text/plain; charset="ISO-8859-1"
X-Mailer: Evolution 3.22.3-0ubuntu0.1 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit

On Tue, 2017-02-28 at 21:23 +0530, Arushi Singhal wrote:
> On Tue, Feb 28, 2017 at 4:41 PM, Joe Perches <joe@perches.com> wrote:
> 
> > On Tue, 2017-02-28 at 16:15 +0530, Arushi Singhal wrote:
> > > Error reported by checkpatch.pl as "avoid multiple line dereference".
> > > Addition of new variables to make the code more readable.
> > 
> > You should probably split this into 2 patches, one for
> > each file.
> > 
> > 
> 
> Hi Joe
> But I thinkl the major issue is to correct the "avoid multiple line
> dereference".

Not really.

The issue here is making the code intelligible
for a human and as error free as possible.

Using multiple line statements are generally
hard for people to read.

Using repeated long identifiers with similar
names can be error prone.

Using shorter temporary/automatic variables for
repeated long dereferences can make code easier
for humans to read while having the benefit of
possibly reducing generated object code size.

I believe the first file modified by your patch
has no issue and can be applied separately if
it is not bound up with the changes to the
second file.

best of luck.

> Thanks
> Arushi
> 
> > What Julia said about finding a better/shorter identifier
> > than RefreshRateTableIndex is true but I still suggest
> > something like:
> > 
> > > diff --git a/drivers/staging/xgifb/vb_setmode.c
> > 
> > b/drivers/staging/xgifb/vb_setmode.c@@ -221,8 +221,8 @@ static unsigned
> > char XGI_AjustCRT2Rate(unsigned short ModeIdIndex,
> > > 
> > >       for (; XGI330_RefIndex[RefreshRateTableIndex + (*i)].ModeID ==
> > >              tempbx; (*i)--) {
> > > -             infoflag = XGI330_RefIndex[RefreshRateTableIndex + (*i)].
> > > -                             Ext_InfoFlag;
> > > +             infoflag = XGI330_RefIndex[RefreshRateTableIndex +
> > 
> > (*i)].Ext_InfoFlag;
> > > +
> > 
> > I suggest something like:
> > ---
> >  drivers/staging/xgifb/vb_setmode.c | 41 ++++++++++++++++++------------
> > --------
> >  1 file changed, 19 insertions(+), 22 deletions(-)
> > 
> > diff --git a/drivers/staging/xgifb/vb_setmode.c
> > b/drivers/staging/xgifb/vb_setmode.c
> > index 7c7c8c8f1df3..daa3318aab41 100644
> > --- a/drivers/staging/xgifb/vb_setmode.c
> > +++ b/drivers/staging/xgifb/vb_setmode.c
> > @@ -172,10 +172,12 @@ static unsigned char XGI_AjustCRT2Rate(unsigned
> > short ModeIdIndex,
> >                 struct vb_device_info *pVBInfo)
> >  {
> >         unsigned short tempax, tempbx, resinfo, modeflag, infoflag;
> > +       const struct XGI_Ext2Struct *ext2;
> > 
> >         modeflag = XGI330_EModeIDTable[ModeIdIndex].Ext_ModeFlag;
> >         resinfo = XGI330_EModeIDTable[ModeIdIndex].Ext_RESINFO;
> > -       tempbx = XGI330_RefIndex[RefreshRateTableIndex + (*i)].ModeID;
> > +       ext2 = &XGI330_RefIndex[RefreshRateTableIndex];
> > +       tempbx = ext2[*i].ModeID;
> >         tempax = 0;
> > 
> >         if (pVBInfo->VBInfo & SetCRT2ToRAMDAC) {
> > @@ -219,10 +221,8 @@ static unsigned char XGI_AjustCRT2Rate(unsigned short
> > ModeIdIndex,
> >                         return 0;
> >         }
> > 
> > -       for (; XGI330_RefIndex[RefreshRateTableIndex + (*i)].ModeID ==
> > -              tempbx; (*i)--) {
> > -               infoflag = XGI330_RefIndex[RefreshRateTableIndex + (*i)].
> > -                               Ext_InfoFlag;
> > +       for (; ext2[*i].ModeID == tempbx; (*i)--) {
> > +               infoflag = ext2[*i].Ext_InfoFlag;
> >                 if (infoflag & tempax)
> >                         return 1;
> > 
> > @@ -231,12 +231,9 @@ static unsigned char XGI_AjustCRT2Rate(unsigned short
> > ModeIdIndex,
> >         }
> > 
> >         for ((*i) = 0;; (*i)++) {
> > -               infoflag = XGI330_RefIndex[RefreshRateTableIndex + (*i)].
> > -                               Ext_InfoFlag;
> > -               if (XGI330_RefIndex[RefreshRateTableIndex + (*i)].ModeID
> > -                               != tempbx) {
> > +               infoflag = ext2[*i].Ext_InfoFlag;
> > +               if (ext2[*i].ModeID != tempbx)
> >                         return 0;
> > -               }
> > 
> >                 if (infoflag & tempax)
> >                         return 1;
> > @@ -5050,6 +5047,7 @@ unsigned short XGI_GetRatePtrCRT2(struct
> > xgi_hw_device_info *pXGIHWDE,
> >  {
> >         const u8 LCDARefreshIndex[] = {
> >                 0x00, 0x00, 0x03, 0x01, 0x01, 0x01, 0x01, 0x00 };
> > +       const struct XGI_Ext2Struct *ext2;
> > 
> >         unsigned short RefreshRateTableIndex, i, index, temp;
> > 
> > @@ -5073,29 +5071,29 @@ unsigned short XGI_GetRatePtrCRT2(struct
> > xgi_hw_device_info *pXGIHWDE,
> >         }
> > 
> >         RefreshRateTableIndex = XGI330_EModeIDTable[ModeIdIndex].REFindex;
> > -       ModeNo = XGI330_RefIndex[RefreshRateTableIndex].ModeID;
> > +       ext2 = &XGI330_RefIndex[RefreshRateTableIndex];
> > +       ModeNo = ext2->ModeID;
> >         if (pXGIHWDE->jChipType >= XG20) { /* for XG20, XG21, XG27 */
> > -               if ((XGI330_RefIndex[RefreshRateTableIndex].XRes == 800)
> > &&
> > -                   (XGI330_RefIndex[RefreshRateTableIndex].YRes == 600))
> > {
> > +               if ((ext2->XRes == 800) &&
> > +                   (ext2->YRes == 600)) {
> >                         index++;
> >                 }
> >                 /* do the similar adjustment like XGISearchCRT1Rate() */
> > -               if ((XGI330_RefIndex[RefreshRateTableIndex].XRes == 1024)
> > &&
> > -                   (XGI330_RefIndex[RefreshRateTableIndex].YRes == 768))
> > {
> > +               if ((ext2->XRes == 1024) &&
> > +                   (ext2->YRes == 768)) {
> >                         index++;
> >                 }
> > -               if ((XGI330_RefIndex[RefreshRateTableIndex].XRes == 1280)
> > &&
> > -                   (XGI330_RefIndex[RefreshRateTableIndex].YRes ==
> > 1024)) {
> > +               if ((ext2->XRes == 1280) &&
> > +                   (ext2->YRes == 1024)) {
> >                         index++;
> >                 }
> >         }
> > 
> >         i = 0;
> >         do {
> > -               if (XGI330_RefIndex[RefreshRateTableIndex + i].
> > -                       ModeID != ModeNo)
> > +               if (ext2[i].ModeID != ModeNo)
> >                         break;
> > -               temp = XGI330_RefIndex[RefreshRateTableIndex +
> > i].Ext_InfoFlag;
> > +               temp = ext2[i].Ext_InfoFlag;
> >                 temp &= ModeTypeMask;
> >                 if (temp < pVBInfo->ModeType)
> >                         break;
> > @@ -5105,8 +5103,7 @@ unsigned short XGI_GetRatePtrCRT2(struct
> > xgi_hw_device_info *pXGIHWDE,
> >         } while (index != 0xFFFF);
> >         if (!(pVBInfo->VBInfo & SetCRT2ToRAMDAC)) {
> >                 if (pVBInfo->VBInfo & SetInSlaveMode) {
> > -                       temp = XGI330_RefIndex[RefreshRateTableIndex + i
> > - 1].
> > -                               Ext_InfoFlag;
> > +                       temp = ext2[i - 1].Ext_InfoFlag;
> >                         if (temp & InterlaceMode)
> >                                 i++;
> >                 }
> > 
> > 

