/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gnarlitronic.ps.spellswordgame.model;

import java.util.Arrays;
import java.util.Objects;
import javax.inject.Inject;
import org.springframework.jdbc.core.JdbcTemplate;

/**
 *
 * @author Elnic
 */
public class Enemy {
    
    private int enemyId;
    private String enemyName;
    private int[] damageRange;
    private int level;
    private int maxHealth;
    private int health;
    private String elementalResistance;
    private String elementalWeakness;
    private int criticalStrikeChance;
    private int criticalDmg;
    private int lootChance;
    private int points;

    
    
    public int getCriticalDmg() {
        return criticalDmg;
    }

    public void setCriticalDmg(int criticalDmg) {
        this.criticalDmg = criticalDmg;
    }

    public int getEnemyId() {
        return enemyId;
    }

    public void setEnemyId(int enemyId) {
        this.enemyId = enemyId;
    }

    public String getEnemyName() {
        return enemyName;
    }

    public void setEnemyName(String enemyName) {
        this.enemyName = enemyName;
    }

    public int[] getDamageRange() {
        return damageRange;
    }

    public void setDamageRange(int[] damageRange) {
        this.damageRange = damageRange;
    }

    public int getLevel() {
        return level;
    }

    public void setLevel(int level) {
        this.level = level;
    }

    public int getMaxHealth() {
        return maxHealth;
    }

    public void setMaxHealth(int maxHealth) {
        this.maxHealth = maxHealth;
    }

    public int getHealth() {
        return health;
    }

    public void setHealth(int health) {
        this.health = health;
    }

    public String getElementalResistance() {
        return elementalResistance;
    }

    public void setElementalResistance(String elementalResistance) {
        this.elementalResistance = elementalResistance;
    }

    public String getElementalWeakness() {
        return elementalWeakness;
    }

    public void setElementalWeakness(String elementalWeakness) {
        this.elementalWeakness = elementalWeakness;
    }

    public int getCriticalStrikeChance() {
        return criticalStrikeChance;
    }

    public void setCriticalStrikeChance(int criticalStrikeChance) {
        this.criticalStrikeChance = criticalStrikeChance;
    }

    public int getLootChance() {
        return lootChance;
    }

    public void setLootChance(int lootChance) {
        this.lootChance = lootChance;
    }

    public int getPoints() {
        return points;
    }

    public void setPoints(int points) {
        this.points = points;
    }

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 47 * hash + this.enemyId;
        hash = 47 * hash + Objects.hashCode(this.enemyName);
        hash = 47 * hash + Arrays.hashCode(this.damageRange);
        hash = 47 * hash + this.level;
        hash = 47 * hash + this.maxHealth;
        hash = 47 * hash + this.health;
        hash = 47 * hash + Objects.hashCode(this.elementalResistance);
        hash = 47 * hash + Objects.hashCode(this.elementalWeakness);
        hash = 47 * hash + this.criticalStrikeChance;
        hash = 47 * hash + this.criticalDmg;
        hash = 47 * hash + this.lootChance;
        hash = 47 * hash + this.points;
        return hash;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final Enemy other = (Enemy) obj;
        if (this.enemyId != other.enemyId) {
            return false;
        }
        if (this.level != other.level) {
            return false;
        }
        if (this.maxHealth != other.maxHealth) {
            return false;
        }
        if (this.health != other.health) {
            return false;
        }
        if (this.criticalStrikeChance != other.criticalStrikeChance) {
            return false;
        }
        if (this.criticalDmg != other.criticalDmg) {
            return false;
        }
        if (this.lootChance != other.lootChance) {
            return false;
        }
        if (this.points != other.points) {
            return false;
        }
        if (!Objects.equals(this.enemyName, other.enemyName)) {
            return false;
        }
        if (!Objects.equals(this.elementalResistance, other.elementalResistance)) {
            return false;
        }
        if (!Objects.equals(this.elementalWeakness, other.elementalWeakness)) {
            return false;
        }
        if (!Arrays.equals(this.damageRange, other.damageRange)) {
            return false;
        }
        return true;
    }

}
