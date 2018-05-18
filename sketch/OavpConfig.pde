public class OavpConfig {
  public String AUDIO_FILE;

  public int FRAMERATE = 60;

  public int BUFFER_SIZE = 1024;
  public int MIN_BANDWIDTH_PER_OCTAVE = 200;
  public int BANDS_PER_OCTAVE = 30;

  public int FONT_UNIT = 8;
  public float FONT_SCALE = 0.0033;
  public int COLOR_ACCENT = 5;

  public float STAGE_WIDTH = 1000;
  public float STAGE_HEIGHT = 1000;
  public float GRID_SCALE = 1000;

  public float SPECTRUM_SMOOTHING = 0.80f;
  public float LEVEL_SMOOTHING = 0.95f;
  public float BUFFER_SMOOTHING = 0.85f;

  public boolean ENABLE_ORTHO = false;

  OavpConfig() {}

  OavpConfig(String path) {
    JSONObject configs;
    configs = loadJSONObject(path);
    AUDIO_FILE = configs.getString("AUDIO_FILE");
    FRAMERATE = configs.getInt("FRAMERATE");
    BUFFER_SIZE = configs.getInt("BUFFER_SIZE");
    MIN_BANDWIDTH_PER_OCTAVE = configs.getInt("MIN_BANDWIDTH_PER_OCTAVE");
    BANDS_PER_OCTAVE = configs.getInt("BANDS_PER_OCTAVE");
    FONT_UNIT = configs.getInt("FONT_UNIT");
    FONT_SCALE = configs.getFloat("FONT_SCALE");
    COLOR_ACCENT = configs.getInt("COLOR_ACCENT");
    STAGE_WIDTH = configs.getFloat("STAGE_WIDTH");
    STAGE_HEIGHT = configs.getFloat("STAGE_HEIGHT");
    GRID_SCALE = configs.getFloat("GRID_SCALE");
    SPECTRUM_SMOOTHING = configs.getFloat("SPECTRUM_SMOOTHING");
    LEVEL_SMOOTHING = configs.getFloat("LEVEL_SMOOTHING");
    BUFFER_SMOOTHING = configs.getFloat("BUFFER_SMOOTHING");
    ENABLE_ORTHO = configs.getBoolean("ENABLE_ORTHO");
  }
}