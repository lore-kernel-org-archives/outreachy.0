X-GM-THRID: 6329987466337976320
X-Received: by 10.66.232.231 with SMTP id tr7mr4639781pac.88.1474314456203;
        Mon, 19 Sep 2016 12:47:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.1.7 with SMTP id 7ls313720otu.25.gmail; Mon, 19 Sep 2016
 12:47:35 -0700 (PDT)
X-Received: by 10.157.36.133 with SMTP id z5mr188483ota.89.1474314455766;
        Mon, 19 Sep 2016 12:47:35 -0700 (PDT)
Return-Path: <kdunne@mail.ccsf.edu>
Received: from mail-it0-x242.google.com (mail-it0-x242.google.com. [2607:f8b0:4001:c0b::242])
        by gmr-mx.google.com with ESMTPS id 125si1691530itw.2.2016.09.19.12.47.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Sep 2016 12:47:35 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4001:c0b::242 is neither permitted nor denied by best guess record for domain of kdunne@mail.ccsf.edu) client-ip=2607:f8b0:4001:c0b::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@mail-ccsf-edu.20150623.gappssmtp.com;
       spf=neutral (google.com: 2607:f8b0:4001:c0b::242 is neither permitted nor denied by best guess record for domain of kdunne@mail.ccsf.edu) smtp.mailfrom=kdunne@mail.ccsf.edu
Received: by mail-it0-x242.google.com with SMTP id n143so4940757ita.3
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Sep 2016 12:47:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mail-ccsf-edu.20150623.gappssmtp.com; s=20150623;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=CZecyooVOExpS3luppPHdqLciwKG+zNexq1VZVRV8S0=;
        b=LkoKabUlY+9600hoNQuEGpAlGOT7MjAWOvzxBlU44i5FRGrfyOpbGRPWZAgd0etKbE
         xuCrRm0llk9nouS/SQzgwz3uODagkk96BfAYBpG/enm/LP9wTvbrtMm+Z3jGpHnO41+T
         OaATazD8m7AR15ZqI793Gy+uvOp/ChIdpcIoGlOrNa6hVZB9S25EhyouiwMhKCCeF+8V
         +igXzU74GJaMGQ56coCQqQMYBr0vYxkW2KqGt/zhIc+/vJ9/z578qphbf9MqQf0h66YH
         P/sG7UnyZxEF+28ap4i3Li78N4T8E6ZV+M0ciM1majsei/l+KAj6MZ4kS+DPQ3aJn2zi
         rKqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=CZecyooVOExpS3luppPHdqLciwKG+zNexq1VZVRV8S0=;
        b=Uu+K3L1J36C2ijhnD0criRYrdJVg8gBpsyTUxxpd+XJN9WjltexUtYFMOMJXq/SsdL
         yhllG7opolO6p4YQQH/4W7fzVI7vGZh3wa7XCXO/VgzlIleA0/ZMY/tfwrwxAK51fRxe
         38AYcnpMi9dy2r8Oq2dcSao7nGpCAWEVBfWmVr7r54VbGkI7EAlp9sLUW3CeFjCe5p+W
         FMl87cVC6txvkEOOCzycRiDuONkEmnAfLl3BmBoNNt9mxUErOplefHBjq9NJd6KT40Sx
         KkcrQetaTmDUEij3A/f1kCStH+4WvamUTK9rr/Li3Svs3e3T3zw006Kbp2W/cSVZYgra
         ow/A==
X-Gm-Message-State: AE9vXwPF1x27Rr6jQSZ9KiSvIut0LKRbajpjLaI2woDtM6URMsBMrn/rKZEJt5hgcEd6pBofTVKOmQ60ea5XLXX8
X-Received: by 10.36.150.70 with SMTP id z67mr12166395itd.80.1474314454599;
 Mon, 19 Sep 2016 12:47:34 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.36.141.194 with HTTP; Mon, 19 Sep 2016 12:47:34 -0700 (PDT)
In-Reply-To: <fe37ebf0-5e01-1a2a-665f-e901f8f9f502@kernel.org>
References: <20160914171828.GA3062@katie-Inspiron-5748> <20160916051527.GB3124@d830.WORKGROUP>
 <c70324bd-81a0-d10e-5c23-6e7eb78390f9@kernel.org> <fe37ebf0-5e01-1a2a-665f-e901f8f9f502@kernel.org>
From: Katherine Dunne <kdunne@mail.ccsf.edu>
Date: Mon, 19 Sep 2016 12:47:34 -0700
Message-ID: <CA+Cr938Ve97VVM7j4tdHbXCuaErRQX44vj9JvNb98bSkfZwkSg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: iio: ad5933: align
 arguments on new line with open parenthesis
To: Jonathan Cameron <jic23@kernel.org>
Cc: Alison Schofield <amsfield22@gmail.com>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>, Lars-Peter Clausen <lars@metafoo.de>, 
	"Hennerich, Michael" <michael.hennerich@analog.com>
Content-Type: multipart/alternative; boundary=94eb2c07d0745a9ea5053ce19531

--94eb2c07d0745a9ea5053ce19531
Content-Type: text/plain; charset=UTF-8

On Sun, Sep 18, 2016 at 4:14 AM, Jonathan Cameron <jic23@kernel.org> wrote:

> On 18/09/16 12:08, Jonathan Cameron wrote:
> > On 16/09/16 06:15, Alison Schofield wrote:
> >> On Wed, Sep 14, 2016 at 10:18:28AM -0700, Katie Dunne wrote:
> >>> Issue found by checkpatch: "Alignment should match open parenthesis."
> >>> Multiple lines are also reduced to a single line where possible.
> >>>
> >>> Signed-off-by: Katie Dunne <kdunne@mail.ccsf.edu>
> >>> ---
> >>> Changes in v2:
> >>>     -Bring broken argument lists to one line where
> >>>      80 characters or less is possible
> >>
> >> There are more that can be pulled in.  Not into one line, but that can
> >> go from 3 to 2 lines.  We're not trying to align the parameters in a
> >> list.  We want to fit as many as we can within 80 chars on the 1st line,
> >> then fit as many as we can on the 2nd line, etc.
> >>
> >> I did one below as an example, but there are more beyond that.
> > As a small addition to what Alisons has said, there are sometimes
> > reasons to do breaks in particular locations.   The classic would be
> > to keep an array pointer argument next to an argument saying how many
> > elements it has in it.
> >
> > Sometimes it comes down to personal preference on when to do this or
> > not.  Mostly we don't actually care about such find details when
> > reviewing patches (or I don't anyway ;)
> >
> Upshot is that the patch is a good improvement.  Perhaps it could have
> been ever so slightly better, but well worth having!
>
> Applied to the togreg branch of iio.git. Will be initially pushed out
> as testing for the autobuilders at 0day to play with it.
>
> Might make the upcoming merge window depending on whether Linus
> decides to let the current cycle run to an rc8.
>
> Thanks,
>
> Jonathan
>

Thanks for the feedback. I'll keep this in mind for future patches.

Katie


> > Jonathan
> >>
> >> Thanks for cleaning this up,
> >> alisons
> >>
> >>>
> >>>     -Fix error in v1 in which alignment caused 2 lines
> >>>      to be over 80 characters by breaking up line
> >>>
> >>>  drivers/staging/iio/impedance-analyzer/ad5933.c | 38
> ++++++++++++-------------
> >>>  1 file changed, 19 insertions(+), 19 deletions(-)
> >>>
> >>> diff --git a/drivers/staging/iio/impedance-analyzer/ad5933.c
> b/drivers/staging/iio/impedance-analyzer/ad5933.c
> >>> index 24c348d..5eecf1c 100644
> >>> --- a/drivers/staging/iio/impedance-analyzer/ad5933.c
> >>> +++ b/drivers/staging/iio/impedance-analyzer/ad5933.c
> >>> @@ -156,8 +156,7 @@ static const struct iio_chan_spec
> ad5933_channels[] = {
> >>>     },
> >>>  };
> >>>
> >>> -static int ad5933_i2c_write(struct i2c_client *client,
> >>> -                         u8 reg, u8 len, u8 *data)
> >>> +static int ad5933_i2c_write(struct i2c_client *client, u8 reg, u8
> len, u8 *data)
> >>>  {
> >>>     int ret;
> >>>
> >>> @@ -171,8 +170,7 @@ static int ad5933_i2c_write(struct i2c_client
> *client,
> >>>     return 0;
> >>>  }
> >>>
> >>> -static int ad5933_i2c_read(struct i2c_client *client,
> >>> -                         u8 reg, u8 len, u8 *data)
> >>> +static int ad5933_i2c_read(struct i2c_client *client, u8 reg, u8 len,
> u8 *data)
> >>>  {
> >>>     int ret;
> >>>
> >>> @@ -269,7 +267,8 @@ static int ad5933_setup(struct ad5933_state *st)
> >>>     dat = cpu_to_be16(st->settling_cycles);
> >>>
> >>>     ret = ad5933_i2c_write(st->client,
> >>> -                   AD5933_REG_SETTLING_CYCLES, 2, (u8 *)&dat);
> >>> +                          AD5933_REG_SETTLING_CYCLES,
> >>> +                          2, (u8 *)&dat);
> >>
> >>      ret = ad5933_i2c_write(st->client, AD5933_REG_SETTLING_CYCLES, 2,
> >>                             (u8 *)&dat);
> >>
> >>
> >>>     if (ret < 0)
> >>>             return ret;
> >>>
> >>> @@ -294,8 +293,8 @@ static void ad5933_calc_out_ranges(struct
> ad5933_state *st)
> >>>   */
> >>>
> >>>  static ssize_t ad5933_show_frequency(struct device *dev,
> >>> -                                   struct device_attribute *attr,
> >>> -                                   char *buf)
> >>> +                                struct device_attribute *attr,
> >>> +                                char *buf)
> >>>  {
> >>>     struct iio_dev *indio_dev = dev_to_iio_dev(dev);
> >>>     struct ad5933_state *st = iio_priv(indio_dev);
> >>> @@ -322,9 +321,9 @@ static ssize_t ad5933_show_frequency(struct device
> *dev,
> >>>  }
> >>>
> >>>  static ssize_t ad5933_store_frequency(struct device *dev,
> >>> -                                    struct device_attribute *attr,
> >>> -                                    const char *buf,
> >>> -                                    size_t len)
> >>> +                                 struct device_attribute *attr,
> >>> +                                 const char *buf,
> >>> +                                 size_t len)
> >>>  {
> >>>     struct iio_dev *indio_dev = dev_to_iio_dev(dev);
> >>>     struct ad5933_state *st = iio_priv(indio_dev);
> >>> @@ -357,8 +356,8 @@ static IIO_DEVICE_ATTR(out_voltage0_freq_increment,
> S_IRUGO | S_IWUSR,
> >>>                     AD5933_REG_FREQ_INC);
> >>>
> >>>  static ssize_t ad5933_show(struct device *dev,
> >>> -                                   struct device_attribute *attr,
> >>> -                                   char *buf)
> >>> +                      struct device_attribute *attr,
> >>> +                      char *buf)
> >>>  {
> >>>     struct iio_dev *indio_dev = dev_to_iio_dev(dev);
> >>>     struct ad5933_state *st = iio_priv(indio_dev);
> >>> @@ -399,9 +398,9 @@ static ssize_t ad5933_show(struct device *dev,
> >>>  }
> >>>
> >>>  static ssize_t ad5933_store(struct device *dev,
> >>> -                                    struct device_attribute *attr,
> >>> -                                    const char *buf,
> >>> -                                    size_t len)
> >>> +                       struct device_attribute *attr,
> >>> +                       const char *buf,
> >>> +                       size_t len)
> >>>  {
> >>>     struct iio_dev *indio_dev = dev_to_iio_dev(dev);
> >>>     struct ad5933_state *st = iio_priv(indio_dev);
> >>> @@ -451,7 +450,8 @@ static ssize_t ad5933_store(struct device *dev,
> >>>
> >>>             dat = cpu_to_be16(val);
> >>>             ret = ad5933_i2c_write(st->client,
> >>> -                           AD5933_REG_SETTLING_CYCLES, 2, (u8 *)&dat);
> >>> +                                  AD5933_REG_SETTLING_CYCLES,
> >>> +                                  2, (u8 *)&dat);
> >>>             break;
> >>>     case AD5933_FREQ_POINTS:
> >>>             val = clamp(val, (u16)0, (u16)511);
> >>> @@ -545,8 +545,8 @@ static int ad5933_read_raw(struct iio_dev
> *indio_dev,
> >>>                     goto out;
> >>>
> >>>             ret = ad5933_i2c_read(st->client,
> >>> -                           AD5933_REG_TEMP_DATA, 2,
> >>> -                           (u8 *)&dat);
> >>> +                                 AD5933_REG_TEMP_DATA,
> >>> +                                 2, (u8 *)&dat);
> >>>             if (ret < 0)
> >>>                     goto out;
> >>>             mutex_unlock(&indio_dev->mlock);
> >>> @@ -705,7 +705,7 @@ static void ad5933_work(struct work_struct *work)
> >>>  }
> >>>
> >>>  static int ad5933_probe(struct i2c_client *client,
> >>> -                              const struct i2c_device_id *id)
> >>> +                   const struct i2c_device_id *id)
> >>>  {
> >>>     int ret, voltage_uv = 0;
> >>>     struct ad5933_platform_data *pdata = dev_get_platdata(&client->dev)
> ;
> >>> --
> >>> 2.7.4
> >>>
> >>> --
> >>> You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> >>> To unsubscribe from this group and stop receiving emails from it, send
> an email to outreachy-kernel+unsubscribe@googlegroups.com.
> >>> To post to this group, send email to outreachy-kernel@googlegroups.com
> .
> >>> To view this discussion on the web visit https://groups.google.com/d/
> msgid/outreachy-kernel/20160914171828.GA3062%40katie-Inspiron-5748.
> >>> For more options, visit https://groups.google.com/d/optout.
> >
>
>

--94eb2c07d0745a9ea5053ce19531
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Sun, Sep 18, 2016 at 4:14 AM, Jonathan Cameron <span di=
r=3D"ltr">&lt;<a href=3D"mailto:jic23@kernel.org" target=3D"_blank">jic23@k=
ernel.org</a>&gt;</span> wrote:<br><div class=3D"gmail_extra"><div class=3D=
"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex"><span class=3D"">On 18/09/16 1=
2:08, Jonathan Cameron wrote:<br>
&gt; On 16/09/16 06:15, Alison Schofield wrote:<br>
&gt;&gt; On Wed, Sep 14, 2016 at 10:18:28AM -0700, Katie Dunne wrote:<br>
&gt;&gt;&gt; Issue found by checkpatch: &quot;Alignment should match open p=
arenthesis.&quot;<br>
&gt;&gt;&gt; Multiple lines are also reduced to a single line where possibl=
e.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Signed-off-by: Katie Dunne &lt;<a href=3D"mailto:kdunne@mail.c=
csf.edu">kdunne@mail.ccsf.edu</a>&gt;<br>
&gt;&gt;&gt; ---<br>
&gt;&gt;&gt; Changes in v2:<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0-Bring broken argument lists to one line wh=
ere<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 80 characters or less is possible<br>
&gt;&gt;<br>
&gt;&gt; There are more that can be pulled in.=C2=A0 Not into one line, but=
 that can<br>
&gt;&gt; go from 3 to 2 lines.=C2=A0 We&#39;re not trying to align the para=
meters in a<br>
&gt;&gt; list.=C2=A0 We want to fit as many as we can within 80 chars on th=
e 1st line,<br>
&gt;&gt; then fit as many as we can on the 2nd line, etc.<br>
&gt;&gt;<br>
&gt;&gt; I did one below as an example, but there are more beyond that.<br>
&gt; As a small addition to what Alisons has said, there are sometimes<br>
&gt; reasons to do breaks in particular locations.=C2=A0 =C2=A0The classic =
would be<br>
&gt; to keep an array pointer argument next to an argument saying how many<=
br>
&gt; elements it has in it.<br>
&gt;<br>
&gt; Sometimes it comes down to personal preference on when to do this or<b=
r>
&gt; not.=C2=A0 Mostly we don&#39;t actually care about such find details w=
hen<br>
&gt; reviewing patches (or I don&#39;t anyway ;)<br>
&gt;<br>
</span>Upshot is that the patch is a good improvement.=C2=A0 Perhaps it cou=
ld have<br>
been ever so slightly better, but well worth having!<br>
<br>
Applied to the togreg branch of iio.git. Will be initially pushed out<br>
as testing for the autobuilders at 0day to play with it.<br>
<br>
Might make the upcoming merge window depending on whether Linus<br>
decides to let the current cycle run to an rc8.<br>
<br>
Thanks,<br>
<br>
Jonathan<br>
<div class=3D"HOEnZb"><div class=3D"h5"></div></div></blockquote><div><br><=
/div><div>Thanks for the feedback. I&#39;ll keep this in mind for future pa=
tches.<br></div><div><br></div><div>Katie<br></div><div>=C2=A0</div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc =
solid;padding-left:1ex"><div class=3D"HOEnZb"><div class=3D"h5">&gt; Jonath=
an<br>
&gt;&gt;<br>
&gt;&gt; Thanks for cleaning this up,<br>
&gt;&gt; alisons<br>
&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0-Fix error in v1 in which alignment caused =
2 lines<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 to be over 80 characters by breaking up li=
ne<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;=C2=A0 drivers/staging/iio/impedance-<wbr>analyzer/ad5933.c | 3=
8 ++++++++++++-------------<br>
&gt;&gt;&gt;=C2=A0 1 file changed, 19 insertions(+), 19 deletions(-)<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; diff --git a/drivers/staging/iio/<wbr>impedance-analyzer/ad593=
3.c b/drivers/staging/iio/<wbr>impedance-analyzer/ad5933.c<br>
&gt;&gt;&gt; index 24c348d..5eecf1c 100644<br>
&gt;&gt;&gt; --- a/drivers/staging/iio/<wbr>impedance-analyzer/ad5933.c<br>
&gt;&gt;&gt; +++ b/drivers/staging/iio/<wbr>impedance-analyzer/ad5933.c<br>
&gt;&gt;&gt; @@ -156,8 +156,7 @@ static const struct iio_chan_spec ad5933_c=
hannels[] =3D {<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0},<br>
&gt;&gt;&gt;=C2=A0 };<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; -static int ad5933_i2c_write(struct i2c_client *client,<br>
&gt;&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0u8 reg, u8 len, u8 *data)<br>
&gt;&gt;&gt; +static int ad5933_i2c_write(struct i2c_client *client, u8 reg=
, u8 len, u8 *data)<br>
&gt;&gt;&gt;=C2=A0 {<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0int ret;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; @@ -171,8 +170,7 @@ static int ad5933_i2c_write(struct i2c_cli=
ent *client,<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0return 0;<br>
&gt;&gt;&gt;=C2=A0 }<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; -static int ad5933_i2c_read(struct i2c_client *client,<br>
&gt;&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0u8 reg, u8 len, u8 *data)<br>
&gt;&gt;&gt; +static int ad5933_i2c_read(struct i2c_client *client, u8 reg,=
 u8 len, u8 *data)<br>
&gt;&gt;&gt;=C2=A0 {<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0int ret;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; @@ -269,7 +267,8 @@ static int ad5933_setup(struct ad5933_stat=
e *st)<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0dat =3D cpu_to_be16(st-&gt;settling_<wbr>cy=
cles);<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0ret =3D ad5933_i2c_write(st-&gt;client,<br>
&gt;&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0AD5933_REG_SETTLING_CYCLES, 2, (u8 *)&amp;dat);<br>
&gt;&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 AD5933_REG_SETTLING_CYCLES,<br>
&gt;&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 2, (u8 *)&amp;dat);<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 ret =3D ad5933_i2c_write(st-&gt;client, AD5933=
_REG_SETTLING_CYCLES, 2,<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(u8 *)&amp;dat);<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0if (ret &lt; 0)<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return ret;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; @@ -294,8 +293,8 @@ static void ad5933_calc_out_ranges(struct =
ad5933_state *st)<br>
&gt;&gt;&gt;=C2=A0 =C2=A0*/<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;=C2=A0 static ssize_t ad5933_show_frequency(struct device *dev,=
<br>
&gt;&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0struct de=
vice_attribute *attr,<br>
&gt;&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0char *buf=
)<br>
&gt;&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 struct device_attribut=
e *attr,<br>
&gt;&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 char *buf)<br>
&gt;&gt;&gt;=C2=A0 {<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0struct iio_dev *indio_dev =3D dev_to_iio_de=
v(dev);<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0struct ad5933_state *st =3D iio_priv(indio_=
dev);<br>
&gt;&gt;&gt; @@ -322,9 +321,9 @@ static ssize_t ad5933_show_frequency(struc=
t device *dev,<br>
&gt;&gt;&gt;=C2=A0 }<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;=C2=A0 static ssize_t ad5933_store_frequency(struct device *dev=
,<br>
&gt;&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 struct d=
evice_attribute *attr,<br>
&gt;&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 const ch=
ar *buf,<br>
&gt;&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 size_t l=
en)<br>
&gt;&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0struct device_at=
tribute *attr,<br>
&gt;&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0const char *buf,=
<br>
&gt;&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0size_t len)<br>
&gt;&gt;&gt;=C2=A0 {<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0struct iio_dev *indio_dev =3D dev_to_iio_de=
v(dev);<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0struct ad5933_state *st =3D iio_priv(indio_=
dev);<br>
&gt;&gt;&gt; @@ -357,8 +356,8 @@ static IIO_DEVICE_ATTR(out_voltage0_<wbr>f=
req_increment, S_IRUGO | S_IWUSR,<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0AD5933_REG_FREQ_INC);<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;=C2=A0 static ssize_t ad5933_show(struct device *dev,<br>
&gt;&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0struct de=
vice_attribute *attr,<br>
&gt;&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0char *buf=
)<br>
&gt;&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 struct device_attribute *attr,<br>
&gt;&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 char *buf)<br>
&gt;&gt;&gt;=C2=A0 {<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0struct iio_dev *indio_dev =3D dev_to_iio_de=
v(dev);<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0struct ad5933_state *st =3D iio_priv(indio_=
dev);<br>
&gt;&gt;&gt; @@ -399,9 +398,9 @@ static ssize_t ad5933_show(struct device *=
dev,<br>
&gt;&gt;&gt;=C2=A0 }<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;=C2=A0 static ssize_t ad5933_store(struct device *dev,<br>
&gt;&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 struct d=
evice_attribute *attr,<br>
&gt;&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 const ch=
ar *buf,<br>
&gt;&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 size_t l=
en)<br>
&gt;&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0struct device_attribute *attr,<br>
&gt;&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0const char *buf,<br>
&gt;&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0size_t len)<br>
&gt;&gt;&gt;=C2=A0 {<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0struct iio_dev *indio_dev =3D dev_to_iio_de=
v(dev);<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0struct ad5933_state *st =3D iio_priv(indio_=
dev);<br>
&gt;&gt;&gt; @@ -451,7 +450,8 @@ static ssize_t ad5933_store(struct device =
*dev,<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dat =3D cpu_to_=
be16(val);<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ret =3D ad5933_=
i2c_write(st-&gt;client,<br>
&gt;&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0AD5933_REG_SETTLING_CYCLES, 2, (u8 *)=
&amp;dat);<br>
&gt;&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 AD5933_REG_SETT=
LING_CYCLES,<br>
&gt;&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 2, (u8 *)&amp;d=
at);<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0break;<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0case AD5933_FREQ_POINTS:<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0val =3D clamp(v=
al, (u16)0, (u16)511);<br>
&gt;&gt;&gt; @@ -545,8 +545,8 @@ static int ad5933_read_raw(struct iio_dev =
*indio_dev,<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0goto out;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ret =3D ad5933_=
i2c_read(st-&gt;client,<br>
&gt;&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0AD5933_REG_TEMP_DATA, 2,<br>
&gt;&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(u8 *)&amp;dat);<br>
&gt;&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0AD5933_REG_TEMP_=
DATA,<br>
&gt;&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A02, (u8 *)&amp;da=
t);<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (ret &lt; 0)=
<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0goto out;<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0mutex_unlock(&a=
mp;indio_dev-&gt;<wbr>mlock);<br>
&gt;&gt;&gt; @@ -705,7 +705,7 @@ static void ad5933_work(struct work_struct=
 *work)<br>
&gt;&gt;&gt;=C2=A0 }<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;=C2=A0 static int ad5933_probe(struct i2c_client *client,<br>
&gt;&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 const struct i2c_device_id *i=
d)<br>
&gt;&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0const struct i2c_device_id *id)<br>
&gt;&gt;&gt;=C2=A0 {<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0int ret, voltage_uv =3D 0;<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0struct ad5933_platform_data *pdata =3D dev_=
get_platdata(&amp;client-&gt;dev)<wbr>;<br>
&gt;&gt;&gt; --<br>
&gt;&gt;&gt; 2.7.4<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; --<br>
&gt;&gt;&gt; You received this message because you are subscribed to the Go=
ogle Groups &quot;outreachy-kernel&quot; group.<br>
&gt;&gt;&gt; To unsubscribe from this group and stop receiving emails from =
it, send an email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googl=
egroups.com">outreachy-kernel+unsubscribe@<wbr>googlegroups.com</a>.<br>
&gt;&gt;&gt; To post to this group, send email to <a href=3D"mailto:outreac=
hy-kernel@googlegroups.com">outreachy-kernel@googlegroups.<wbr>com</a>.<br>
&gt;&gt;&gt; To view this discussion on the web visit <a href=3D"https://gr=
oups.google.com/d/msgid/outreachy-kernel/20160914171828.GA3062%40katie-Insp=
iron-5748" rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d=
/<wbr>msgid/outreachy-kernel/<wbr>20160914171828.GA3062%40katie-<wbr>Inspir=
on-5748</a>.<br>
&gt;&gt;&gt; For more options, visit <a href=3D"https://groups.google.com/d=
/optout" rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/<=
wbr>optout</a>.<br>
&gt;<br>
<br>
</div></div></blockquote></div><br></div></div>

--94eb2c07d0745a9ea5053ce19531--

